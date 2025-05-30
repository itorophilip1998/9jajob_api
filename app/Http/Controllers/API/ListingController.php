<?php

namespace App\Http\Controllers\API;

use Carbon\Carbon;
use App\Models\User;
use App\Models\Amenity;
use App\Models\Listing;
use App\Services\Notify;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;
use App\Models\ListingPhoto;
use App\Models\ListingVideo;
use App\Models\Notification;
use App\Models\Transactions;
use App\Http\services\Upload;
use App\Http\services\Balance;
use App\Models\ListingAmenity;
use App\Models\ListingCategory;
use App\Models\ListingLocation;
use Illuminate\Validation\Rule;
use App\Models\ListingSocialItem;
use Illuminate\Support\Facades\DB;
use App\Models\ListingSubscription;
use Illuminate\Support\Facades\URL;
use App\Http\Controllers\Controller;
use App\Mail\SystemMailNotification;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use App\Http\services\ReferralSystem;
use Illuminate\Support\Facades\Request;
use App\Models\ListingAdditionalFeature;
use Illuminate\Support\Facades\Validator;

class ListingController extends Controller
{


    public function index()
    {

        try {
            $listing_category_id = request()->input('listing_category_id');
            $listing_category_name = request()->input('listing_category_name');
            $listing_name = request()->input('listing_name');
            $listing_city = request()->input('listing_city');
            $is_nearest = request()->input('is_nearest');
            $is_trending = request()->input('is_trending');
            $is_auto_complete =  request()->input('is_auto_complete');

            if ($is_auto_complete == 'true') {
                $listing_name = Listing::orderBy('listing_name')->select('listing_name')
                    ->withOut(['rListingLocation', 'rListingCategory'])->get()->map(function ($item) {
                        $listing_name = $item['listing_name'];
                        $item = "$listing_name";
                        return $item;
                    });
                $listing_category_name = ListingCategory::orderBy('listing_category_name')->select('listing_category_name', 'id')->get()->map(function ($item) {
                    $item = $item['listing_category_name'];
                    return $item;
                });
                return response()->json(['auto_complete' => [
                    'listing_category_name' => $listing_category_name,
                    'listing_name' => $listing_name,
                ]], 200);
            }


            // Start with a base query
            $query = Listing::query();

            // update all listing status
            $today = now();
            ListingSubscription::whereDate('end_date', '<', $today)
                ->update(['status' => 'inactive']);


            $query->whereHas('listing_subscription', function ($q) {
                $q->where('status', 'active');
            });




            // Add conditions only for parameters with values
            if ($listing_category_id !== null) {
                $query->where('listing_category_id', $listing_category_id);
            }

            if ($listing_city !== null) {
                $query->where('listing_address', 'LIKE', '%' . $listing_city . '%');
            }

            if ($is_trending !== null) {
                $query->has('boosting', '>=', 1)
                    ->OrHas('verified', '>=', 1)
                    ->OrHas('reviews', '>=', 1);
            }
            if ($listing_name !== null) {
                $query->where('listing_name', 'LIKE', '%' . $listing_name);
            }
            if ($listing_category_name !== null) {

                $query->whereHas('rListingCategory', function ($q) use ($listing_category_name) {
                    $q->where('listing_category_name', 'LIKE', '%' . $listing_category_name);
                });
                // return $query->paginate(10);
            }
            // Execute the query
            $item2 = [
                "address_latitude" => request()->address_latitude,
                "address_longitude" => request()->address_longitude
            ];

            $listing = $query
                ->withCount(['boosting', 'reviews', 'verified'])
                ->orderByDesc('boosting_count')
                ->orderByDesc('verified_count')
                ->orderByDesc('reviews_count')
                ->paginate(10);


            $listing->map(function ($item) use ($item2) {
                $radLat1 = $item['address_latitude'];
                $radLon1 = $item['address_longitude'];
                $radLat2 = $item2['address_latitude'];
                $radLon2 = $item2['address_longitude'];
                $item['km'] = (isset($radLon2) && isset($radLat2)) ? $this->haversineDistance($radLat1, $radLon1, $radLat2, $radLon2) : null;
                return $item;
            });



            $data = ["listing" => $listing];


            return response()->json($data, 200);
        } catch (\Throwable $error) {
            throw $error;
        }
    }


    function haversineDistance($lat1, $lon1, $lat2, $lon2)
    {
        $R = 6371; // Earth radius in kilometers
        // Convert latitude and longitude from degrees to radians
        $radLat1 = deg2rad($lat1);
        $radLon1 = deg2rad($lon1);
        $radLat2 = deg2rad($lat2);
        $radLon2 = deg2rad($lon2);
        // Differences in coordinates
        $dLat = $radLat2 - $radLat1;
        $dLon = $radLon2 - $radLon1;
        // Haversine formula
        $a = sin($dLat / 2) ** 2 + cos($radLat1) * cos($radLat2) * sin($dLon / 2) ** 2;
        $c = 2 * atan2(sqrt($a), sqrt(1 - $a));
        // Distance in kilometers
        $distance = $R * $c;
        $distanceKm = number_format($distance, 1);
        return  (float)$distanceKm;
    }


    public function myListings()
    {
        $data = Listing::where("user_id", auth()->user()->id)->latest()->get();
        return response()->json($data, 200);
    }

    public function AddListings()
    {
        try {
            $listing_creation_amount = request()->listing_creation_amount;

            // check balance
            // $balance = (new Balance)->check($listing_creation_amount);
            // if ($balance < $listing_creation_amount )
            //     return response()->json(['error' => 'Insufficient balance'], 422);

            $user_data = Auth::user();
            $validator = Validator::make(request()->all(), [
                'listing_name' => 'required|unique:listings',
                'listing_description' => 'required',
                'listing_phone' => 'nullable',
                'listing_address' => 'nullable',
                'listing_featured_photo' => 'required|image|mimes:jpeg,png,jpg,gif,heic,avif',
                'photo_list' => 'nullable|array',
                'amenity' => 'nullable|array',
                'video' => 'nullable|array',
                'listing_creation_amount' => 'required'
            ]);

            if ($validator->fails()) {
                return response()->json(['error' => $validator->messages()], 422);
            }

            $data = request()->all();
            if (request()->hasFile('listing_featured_photo')) {
                $final_name =  (new Upload)->image(request()->file('listing_featured_photo'), 'uploads/listing_featured_photos/');
                $data['listing_featured_photo'] = $final_name;
            }
            $data['listing_slug'] = Str::slug(request()->listing_name);
            $data['user_id'] = $user_data->id;
            $data['admin_id'] = 0;
            $data['listing_status'] = "Active";
            $listing = Listing::create($data); //listing Created

            // Social Icons
            if (is_array(request()->social_media) || isset(request()->social_media)) {

                // dump(request()->social_media);
                foreach (request()->social_media as $item) {
                    if (is_array($item) && array_key_exists('icon', $item) && array_key_exists('url', $item)) {
                        ListingSocialItem::create(
                            [
                                "listing_id" => $listing->id,
                                "social_icon" =>  $item['icon'],
                                "social_url" =>  $item['url'],
                            ]
                        );
                    }
                }
            }
            // Amenity

            if (isset(request()->amenity) && is_array(request()->amenity)) {
                foreach (request()->amenity as $item) {
                    ListingAmenity::create(
                        [
                            'listing_id' => $listing->id,
                            'amenity_id' => $item
                        ]
                    );
                }
            }

            // Photo
            if (is_array(request()->photo_list) || isset(request()->photo_list)) {
                foreach (request()->photo_list as $item) {
                    $final_photo_name =  (new Upload)->image($item, 'uploads/listing_photos/');
                    ListingPhoto::create([
                        'listing_id' => $listing->id,
                        'photo' => $final_photo_name,
                    ]);
                }
            }

            //Video
            if (is_array(request()->video) || isset(request()->video)) {
                foreach (request()->video as $item) {
                    $videoName =  (new Upload)->video($item, 'uploads/listing_videos/');
                    ListingVideo::create([
                        'listing_id' => $listing->id,
                        'is_mobile_video' => true,
                        'youtube_video_id' => $videoName,
                    ]);
                }
            }


            // Additional Features
            if (is_array(request()->additional_feature_name) || isset(request()->additional_feature_name)) {

                foreach (request()->additional_feature_name as $item) {
                    ListingAdditionalFeature::create(
                        [
                            'listing_id' => $listing->id,
                            'additional_feature_name' => $item,
                            'additional_feature_value' => $item,
                        ]
                    );
                }
            }
            ListingSubscription::create(
                [
                    "listing_id" => $listing->id,
                    "start_date" => request()->start_date,
                    "end_date" => request()->end_date,
                    "amount" => $listing_creation_amount,
                ]
            );
            // debit from wallate
            $ref_number = Str::random(10);
            $credit = [
                'user_id' => auth()->user()->id,
                'type' => 'credit',
                'status' => 'success', //debit, credit
                'ref_number' => $ref_number,
                'trans_id' => $ref_number,
                'amount' => $listing_creation_amount,
                'description' => "Top Up " . $listing_creation_amount,
                'purpose' => 'top-up', //verification ,packages, top-up, withdrawal,referrals, boost]
                'listing_id' => $listing->id,
            ];
            $listing_debit = [
                'user_id' => auth()->user()->id,
                'type' => 'debit',
                'status' => 'success', //debit, credit
                'ref_number' => $ref_number,
                'trans_id' => $ref_number,
                'amount' => $listing_creation_amount,
                'description' => "Listings Purchased " . $listing_creation_amount ?? "Free Mode",
                'purpose' => 'listings', //verification ,packages, top-up, withdrawal,referrals, boost]
                'listing_id' => $listing->id,
            ];
            Transactions::create($credit);
            Transactions::create($listing_debit);
            // send invioce
            $item = [
                "invoiceNumber" => rand(1111, 9999),
                "invoiceDate" => Carbon::now()->format("d M, Y"),
                "user" => auth()->user()->name,
                "purpose" => $listing_debit["purpose"],
                "status" => $listing_debit["status"],
                "ref_number" => $listing_debit["ref_number"],
                "amount" => $listing_debit["amount"],
                'description' => "Congratulation!!!, You Just enlisted your Business($listing->listing_name) for 1 year",
            ];

            // notification
            $notification =
                [
                    'message' =>
                    $listing_debit['description'],
                    'user_id' => auth()->user()->id,
                    'title' => "Listing "
                ];

            // sendmail
            try {
                //referrerMail
                $listingsMail = [
                    'subject' => 'Congratulations on Successfully Listing Your Service on Sabifix',
                    'user' => auth()->user()->name,
                    'view' => 'mail.listingMail',
                ];
                Mail::to(auth()->user()->email)->queue(new SystemMailNotification($listingsMail)); //referrerMail

            } catch (\Throwable $th) {
                // throw $th;
            }
            // send referrer funds
            (new ReferralSystem)->referred();
            (new Notify)->trigger($notification);
            $getAll = Listing::find($listing->id);
            return response()->json(['message' => "Success!!",  "listing" => $getAll], 200);
        } catch (\Throwable $th) {
            // dd($th);
        }
    }


    public function renewListing()
    {
        try {
            $listing_creation_amount = request()->listing_creation_amount;
            // check balance
            $balance = (new Balance)->check($listing_creation_amount);
            if ($balance < $listing_creation_amount)
                return response()->json(['error' => 'Insufficient balance'], 422);

            $oldListing = ListingSubscription::where('listing_id', request()->listing_id);
            $oldListing && $oldListing->update(['status' => 'inactive']);
            $renew = ListingSubscription::create(
                [
                    "listing_id" => request()->listing_id,
                    "start_date" => request()->start_date,
                    "end_date" => request()->end_date,
                    "amount" => request()->listing_creation_amount,
                ]
            );
            $businessName = Listing::find(request()->listing_id);

            // debit from wallate
            $ref_number = Str::random(10);
            $transaction = [
                'user_id' => auth()->user()->id,
                'type' => 'debit',
                'status' => 'success', //debit, credit
                'ref_number' => $ref_number,
                'trans_id' => $ref_number,
                'amount' => $listing_creation_amount,
                'description' => "Congratulation!!!, You Just Resubscribe your Business($businessName->listing_name) for 1 year",
                'purpose' => 'listings', //verification ,packages, top-up, withdrawal,referrals, boost]
                'listing_id' => request()->listing_id,
            ];
            Transactions::create($transaction);
            // notification
            // send invioce
            $item = [
                "invoiceNumber" => rand(1111, 9999),
                "invoiceDate" => Carbon::now()->format("d M, Y"),
                "user" => auth()->user()->name,
                "purpose" => $transaction["purpose"],
                "status" => $transaction["status"],
                "ref_number" => $transaction["ref_number"],
                "amount" => $transaction["amount"],
                'description' => "Congratulation!!!, You Just Resubscribe your Business($businessName->listing_name) for 1 year",
            ];

            $notification =
                [
                    'message' => $item['description'],
                    'user_id' => auth()->user()->id,
                    'title' => 'Listing'
                ];
            (new Notify)->trigger($notification);

            return response()->json(['message' => "Listing renewed successfully!!",  "listing" => $renew], 200);
        } catch (\Throwable $th) {
            // dd($th);
        }
    }

    public function edit($id)
    {

        $user_data = Auth::user();

        $listing = Listing::where('id', $id)->first();

        if ($listing->admin_id == 0) {
            abort(404);
        }
        if ($listing->admin_id != $user_data->id) {
            abort(404);
        }

        $listing_category = ListingCategory::orderBy('id', 'asc')->get();
        $listing_location = ListingLocation::orderBy('id', 'asc')->get();
        $amenity = Amenity::orderBy('id', 'asc')->get();
        $existing_amenities_array = array();
        $listing_amenities = ListingAmenity::where('listing_id', $id)->orderBy('id', 'asc')->get();
        foreach ($listing_amenities as $row) {
            $existing_amenities_array[] = $row->amenity_id;
        }

        $listing_photos = ListingPhoto::where('listing_id', $id)->orderBy('id', 'asc')->get();
        // $listing_videos = ListingVideo::where('listing_id', $id)->orderBy('id', 'asc')->get();
        $listing_additional_features = ListingAdditionalFeature::where('listing_id', $id)->orderBy('id', 'asc')->get();

        $listing_social_items = ListingSocialItem::where('listing_id', $id)->orderBy('id', 'asc')->get();

        return view('admin.listing_edit', compact('listing', 'listing_category', 'listing_location', 'amenity', 'listing_photos', 'listing_videos', 'listing_additional_features', 'listing_social_items', 'listing_amenities', 'existing_amenities_array'));
    }

    public function update($id)
    {
        $listing_id = $id;
        $user_data = Auth::user();
        $data = request()->all();

        $data['listing_slug'] = Str::slug(request()->listing_name);
        $data['user_id'] = $user_data->id;
        $data['admin_id'] = 0;
        $data['listing_status'] = "Active";
        $keysToExclude = [
            'amenity', 'social_media', 'video', 'photo_list'
        ];
        if (request()->hasFile('listing_featured_photo')) {
            $final_name =  (new Upload)->image(request()->file('listing_featured_photo'), 'uploads/listing_featured_photos/');
            $data['listing_featured_photo'] = $final_name;
        }

        $filteredData =   Arr::except($data, $keysToExclude);
        Listing::where(['id' => $listing_id])->update($filteredData); //listing Created

        // Social Icons
        if (is_array(request()->social_media) || isset(request()->social_media)) {

            // dump(request()->social_media);
            foreach (request()->social_media as $item) {
                if (is_array($item) && array_key_exists('icon', $item) && array_key_exists('url', $item)) {
                    ListingSocialItem::updateOrCreate(
                        ['listing_id' => $listing_id],
                        [
                            "listing_id" => $listing_id,
                            "social_icon" =>  $item['icon'],
                            "social_url" =>  $item['url'],
                        ]
                    );
                }
            }
        }
        // Amenity

        if (isset(request()->amenity) && is_array(request()->amenity)) {
            foreach (request()->amenity as $item) {
                ListingAmenity::updateOrCreate(
                    ['listing_id' => $listing_id],
                    [
                        'listing_id' => $listing_id,
                        'amenity_id' => $item
                    ]
                );
            }
        }
        // Photo
        if (is_array(request()->photo_list) || isset(request()->photo_list)) {
            foreach (request()->photo_list as $item) {
                $final_photo_name =  (new Upload)->image($item, 'uploads/listing_photos/');
                ListingPhoto::create([
                    'listing_id' => $listing_id,
                    'photo' => $final_photo_name,
                ]);
            }
        }

        //Video
        if (is_array(request()->video) || isset(request()->video)) {
            foreach (request()->video as $item) {
                $videoName =  (new Upload)->video($item, 'uploads/listing_videos/');
                ListingVideo::create([
                    'listing_id' => $listing_id,
                    'is_mobile_video' => true,
                    'youtube_video_id' => $videoName,
                ]);
            }
        }


        // Additional Features
        if (is_array(request()->additional_feature_name) || isset(request()->additional_feature_name)) {

            foreach (request()->additional_feature_name as $item) {
                ListingAdditionalFeature::updateOrCreate(
                    ['listing_id' => $listing_id],
                    [
                        'listing_id' => $listing_id,
                        'additional_feature_name' => $item,
                        'additional_feature_value' => $item,
                    ]
                );
            }
        }

        $getAll = Listing::find($listing_id);

        return response()->json(['message' => "Success!!",  "listing" => $getAll], 200);
    }
    public function destroy($id)
    {

        $listing = Listing::findOrFail($id);
        $listing->delete();

        ListingAmenity::where('listing_id', $id)->delete();
        ListingSocialItem::where('listing_id', $id)->delete();
        ListingVideo::where('listing_id', $id)->delete();
        ListingAdditionalFeature::where('listing_id', $id)->delete();
        $all_photos = ListingPhoto::where('listing_id', $id)->get();
        ListingPhoto::where('listing_id', $id)->delete();
        try {
            unlink(public_path('uploads/listing_featured_photos/' . $listing->listing_featured_photo));
            foreach ($all_photos as $item) {
                unlink(public_path('uploads/listing_photos/' . $item->photo));
            }
        } catch (\Throwable $th) {
        }
        // Success Message and redirect
        return response()->json(['message' => "deleted"], 200);
    }

    public function delete_social_item($id)
    {
        if (env('PROJECT_MODE') == 0) {
            return redirect()->back()->with('error', env('PROJECT_NOTIFICATION'));
        }
        $listing_social_item = ListingSocialItem::findOrFail($id);
        $listing_social_item->delete();
        return Redirect()->back()->with('success', SUCCESS_ACTION);
    }

    public function delete_photo($id)
    {

        if (env('PROJECT_MODE') == 0) {
            return redirect()->back()->with('error', env('PROJECT_NOTIFICATION'));
        }

        $listing_photo = ListingPhoto::findOrFail($id);
        unlink(public_path('uploads/listing_photos/' . $listing_photo->photo));
        $listing_photo->delete();
        return Redirect()->back()->with('success', SUCCESS_ACTION);
    }

    public function delete_video($id)
    {

        if (env('PROJECT_MODE') == 0) {
            return redirect()->back()->with('error', env('PROJECT_NOTIFICATION'));
        }

        $listing_video = ListingVideo::findOrFail($id);
        $listing_video->delete();
        return Redirect()->back()->with('success', SUCCESS_ACTION);
    }

    public function delete_additional_feature($id)
    {

        if (env('PROJECT_MODE') == 0) {
            return redirect()->back()->with('error', env('PROJECT_NOTIFICATION'));
        }

        $listing_additional_feature = ListingAdditionalFeature::findOrFail($id);
        $listing_additional_feature->delete();
        return Redirect()->back()->with('success', SUCCESS_ACTION);
    }

    public function change_status($id)
    {
        $listing = Listing::find($id);
        if ($listing->listing_status == 'Active') {
            if (env('PROJECT_MODE') == 0) {
                $message = env('PROJECT_NOTIFICATION');
            } else {
                $listing->listing_status = 'Pending';
                $message = SUCCESS_ACTION;
                $listing->save();
            }
        } else {
            if (env('PROJECT_MODE') == 0) {
                $message = env('PROJECT_NOTIFICATION');
            } else {
                $listing->listing_status = 'Active';
                $message = SUCCESS_ACTION;
                $listing->save();
            }
        }
        return response()->json($message);
    }
}
