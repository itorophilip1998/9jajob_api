<?php

namespace App\Http\Controllers\API;


use App\Models\User;
use App\Models\Amenity;
use App\Models\Listing;
use Illuminate\Support\Str;
use App\Models\ListingPhoto;
use App\Models\ListingVideo;
use App\Models\ListingAmenity;
use App\Models\ListingCategory;
use App\Models\ListingLocation;
use Illuminate\Validation\Rule;
use App\Models\ListingSocialItem;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\URL;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Request;
use App\Models\ListingAdditionalFeature;
use Illuminate\Support\Facades\Validator;

class ListingController extends Controller
{


    public function index()
    {
        $listing_category_id = request()->input('listing_category_id');
        $listing_name = request()->input('listing_name');
        $listing_city = request()->input('listing_city');
        $is_nearest = request()->input('is_nearest');
        $is_trending = request()->input('is_trending');



        // Start with a base query
        $query = Listing::query();

        // Add conditions only for parameters with values
        if ($listing_category_id !== null) {
            $query->where('listing_category_id', $listing_category_id);
        }

        if ($listing_city !== null) {
            $query->where('listing_address', 'LIKE', '%' . $listing_city . '%');
        }

        if ($is_trending !== null) {
            $query->has('boosting', '>=', 1)
                ->OrHas('reviews', '>=', 1);
        }
        if ($listing_name !== null) {
            $query->where('listing_name', 'LIKE', '%' . $listing_name . '%')
                ->orWhereHas('rListingCategory', function ($q) use ($listing_name) {
                    $q->where('listing_category_name', 'LIKE', '%' . $listing_name . '%');
                });
        }
        // Execute the query
        $item2 = [
            "address_latitude" => request()->address_latitude,
            "address_longitude" => request()->address_longitude
        ];
        $listing = $query->get()->map(function ($item) use ($item2) {
            $radLat1 = $item['address_latitude'];
            $radLon1 = $item['address_longitude'];
            $radLat2 = $item2['address_latitude'];
            $radLon2 = $item2['address_longitude'];
            $item['km'] = $this->haversineDistance($radLat1, $radLon1, $radLat2, $radLon2);
            return $item;
        });

        return response()->json(['Counts' => count($listing), "listing" => $listing], 200);
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
        // dd(request()->social_media);




        $user_data = Auth::user();
        $validator = Validator::make(request()->all(), [
            'listing_name' => 'required|unique:listings',
            'listing_description' => 'required',
            'listing_phone' => 'required',
            'listing_address' => 'required',
            'listing_featured_photo' => 'required|image|mimes:jpeg,png,jpg,gif,heic',
            'photo_list' => 'nullable|array',
            'amenity' => 'nullable|array',
            'video' => 'nullable|array',
        ]);
        // dd(request()->all());

        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 422);
        }


        $statement = DB::select("SHOW TABLE STATUS LIKE 'listings'");
        $rand_value = md5(mt_rand(11111111, 99999999));
        $ext = request()->file('listing_featured_photo')->extension();
        $final_name = $rand_value . '.' . $ext;
        request()->file('listing_featured_photo')->move(public_path('uploads/listing_featured_photos'), $final_name);
        $data = request()->all();
        $data['listing_slug'] = Str::slug(request()->listing_name);
        $data['listing_featured_photo'] = $final_name;
        $data['user_id'] = $user_data->id;
        $data['admin_id'] = 0;
        $data['listing_status'] = "Active";
        $listing = Listing::create($data); //listing Created


        // Social Icons
        if (is_array(request()->social_media) || isset(request()->social_media)) {

            // dump(request()->social_media);
            foreach (request()->social_media as $item) {
                if (is_array($item) && array_key_exists('icon', $item) && array_key_exists('url', $item)) {
                    ListingSocialItem::create([
                        "listing_id" => $listing->id,
                        "social_icon" =>  $item['icon'],
                        "social_url" =>  $item['url'],
                    ]);
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

                $main_file_ext = $item->extension();
                $main_mime_type = $item->getMimeType();
                if (($main_mime_type == 'image/jpeg' || $main_mime_type == 'image/png' || $main_mime_type == 'image/gif')) {
                    $rand_value = md5(mt_rand(11111111, 99999999));
                    $final_photo_name = $rand_value . '.' . $main_file_ext;
                    $item->move(public_path('uploads/listing_photos'), $final_photo_name);

                    $obj = new ListingPhoto;
                    $obj->listing_id = $listing->id;
                    $obj->photo = $final_photo_name;
                    $obj->save();
                }
            }
        }

        // Video
        if (is_array(request()->video) || isset(request()->video)) {
            foreach (request()->photo_list as $item) {
                $main_file_ext = $item->extension();
                $main_mime_type = $item->getMimeType();
                if (($main_mime_type == 'image/jpeg' || $main_mime_type == 'image/png' || $main_mime_type == 'image/gif')) {
                    $rand_value = md5(mt_rand(11111111, 99999999));
                    $youtube_video_id = $rand_value . '.' . $main_file_ext;
                    $item->move(public_path('uploads/listing_video'), $youtube_video_id);
                    $obj = new ListingVideo;
                    $obj->listing_id = $listing->id;
                    $obj->is_mobile_video = true;
                    $obj->youtube_video_id = $youtube_video_id;
                    $obj->save();
                }
            }
        }




        // Additional Features
        if (is_array(request()->additional_feature_name) || isset(request()->additional_feature_name)) {

            foreach (request()->additional_feature_name as $item) {
                ListingAdditionalFeature::create([
                    'listing_id' => $listing->id,
                    'additional_feature_name' => $item,
                    'additional_feature_value' => $item,
                ]);
            }
        }

        $getAll = Listing::find($listing->id);

        return response()->json(['message' => "Success!!",  "listing" => $getAll], 200);
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
        $listing_videos = ListingVideo::where('listing_id', $id)->orderBy('id', 'asc')->get();
        $listing_additional_features = ListingAdditionalFeature::where('listing_id', $id)->orderBy('id', 'asc')->get();

        $listing_social_items = ListingSocialItem::where('listing_id', $id)->orderBy('id', 'asc')->get();

        return view('admin.listing_edit', compact('listing', 'listing_category', 'listing_location', 'amenity', 'listing_photos', 'listing_videos', 'listing_additional_features', 'listing_social_items', 'listing_amenities', 'existing_amenities_array'));
    }

    public function update(Request $request, $id)
    {

        if (env('PROJECT_MODE') == 0) {
            return redirect()->back()->with('error', env('PROJECT_NOTIFICATION'));
        }

        $obj = Listing::findOrFail($id);
        $data = $request->only($obj->getFillable());
        if ($request->hasFile('listing_featured_photo')) {

            $request->validate([
                'listing_featured_photo' => 'image|mimes:jpeg,png,jpg,gif|max:2048'
            ], [
                'listing_featured_photo.image' => ERR_PHOTO_IMAGE,
                'listing_featured_photo.mimes' => ERR_PHOTO_JPG_PNG_GIF,
                'listing_featured_photo.max' => ERR_PHOTO_MAX
            ]);

            unlink(public_path('uploads/listing_featured_photos/' . $request->current_photo));

            // Uploading the file
            $ext = $request->file('listing_featured_photo')->extension();
            $rand_value = md5(mt_rand(11111111, 99999999));
            $final_name = $rand_value . '.' . $ext;
            $request->file('listing_featured_photo')->move(public_path('uploads/listing_featured_photos/'), $final_name);

            unset($data['listing_featured_photo']);
            $data['listing_featured_photo'] = $final_name;
        }

        $request->validate([
            'listing_name'   =>  [
                'required',
                Rule::unique('listings')->ignore($id),
            ],
            'listing_slug'   =>  [
                Rule::unique('listings')->ignore($id),
            ],
            'listing_description' => 'required',
            'listing_phone' => 'required',
            'listing_address' => 'required',
        ], [
            'listing_name.required' => ERR_NAME_REQUIRED,
            'listing_name.unique' => ERR_NAME_EXIST,
            'listing_slug.unique' => ERR_SLUG_UNIQUE,
            'listing_description.required' => ERR_DESCRIPTION_REQUIRED,
            'listing_phone.required' => ERR_PHONE_REQUIRED,
        ]);
        if (empty($data['listing_slug'])) {
            unset($data['listing_slug']);
            $data['listing_slug'] = Str::slug($request->listing_name);
        }
        if (preg_match('/\s/', $data['listing_slug'])) {
            return Redirect()->back()->with('error', ERR_SLUG_WHITESPACE);
        }
        $obj->fill($data)->save();


        // Amenity
        $existing_amenities_array = array();
        $arr_amenity = array();
        $result1 = array();
        $result2 = array();

        $listing_amenities = ListingAmenity::where('listing_id', $id)->orderBy('id', 'asc')->get();
        foreach ($listing_amenities as $row) {
            $existing_amenities_array[] = $row->amenity_id;
        }

        if ($request->amenity != '') {
            foreach ($request->amenity as $item) {
                $arr_amenity[] = $item;
            }
        }

        $result1 = array_values(array_diff($existing_amenities_array, $arr_amenity));
        if (!empty($result1)) {
            for ($i = 0; $i < count($result1); $i++) {
                ListingAmenity::where('listing_id', $id)
                    ->where('amenity_id', $result1[$i])
                    ->delete();
            }
        }

        $result2 = array_values(array_diff($arr_amenity, $existing_amenities_array));
        if (!empty($result2)) {
            for ($i = 0; $i < count($result2); $i++) {
                $obj = new ListingAmenity;
                $obj->listing_id = $id;
                $obj->amenity_id = $result2[$i];
                $obj->save();
            }
        }


        // Photo
        if ($request->photo_list == '') {
            //echo 'No photo selected';
        } else {
            foreach ($request->photo_list as $item) {
                $file_in_mb = $item->getSize() / 1024 / 1024;
                $main_file_ext = $item->extension();
                $main_mime_type = $item->getMimeType();

                if (($main_mime_type == 'image/jpeg' || $main_mime_type == 'image/png' || $main_mime_type == 'image/gif') && $file_in_mb <= 2) {
                    $rand_value = md5(mt_rand(11111111, 99999999));
                    $final_photo_name = $rand_value . '.' . $main_file_ext;
                    $item->move(public_path('uploads/listing_photos'), $final_photo_name);

                    $obj = new ListingPhoto;
                    $obj->listing_id = $id;
                    $obj->photo = $final_photo_name;
                    $obj->save();
                }
            }
        }


        // Video
        if ($request->youtube_video_id[0] != '') {
            $arr_youtube_video_id = array();
            foreach ($request->youtube_video_id as $item) {
                $arr_youtube_video_id[] = $item;
            }
            for ($i = 0; $i < count($arr_youtube_video_id); $i++) {
                if ($arr_youtube_video_id[$i] != '') {
                    $obj = new ListingVideo;
                    $obj->listing_id = $id;
                    $obj->youtube_video_id = $arr_youtube_video_id[$i];
                    $obj->save();
                }
            }
        }


        // Social Icons
        if ($request->social_icon[0] != '') {
            $arr_social_icon = array();
            $arr_social_url = array();
            foreach ($request->social_icon as $item) {
                $arr_social_icon[] = $item;
            }
            foreach ($request->social_url as $item) {
                $arr_social_url[] = $item;
            }
            for ($i = 0; $i < count($arr_social_icon); $i++) {
                if (($arr_social_icon[$i] != '') && ($arr_social_url[$i] != '')) {
                    $obj = new ListingSocialItem;
                    $obj->listing_id = $id;
                    $obj->social_icon = $arr_social_icon[$i];
                    $obj->social_url = $arr_social_url[$i];
                    $obj->save();
                }
            }
        }

        // Additional Features
        if ($request->additional_feature_name[0] != '') {
            $arr_additional_feature_name = array();
            $arr_additional_feature_value = array();
            foreach ($request->additional_feature_name as $item) {
                $arr_additional_feature_name[] = $item;
            }
            foreach ($request->additional_feature_value as $item) {
                $arr_additional_feature_value[] = $item;
            }
            for ($i = 0; $i < count($arr_additional_feature_name); $i++) {
                if (($arr_additional_feature_name[$i] != '') && ($arr_additional_feature_value[$i] != '')) {
                    $obj = new ListingAdditionalFeature;
                    $obj->listing_id = $id;
                    $obj->additional_feature_name = $arr_additional_feature_name[$i];
                    $obj->additional_feature_value = $arr_additional_feature_value[$i];
                    $obj->save();
                }
            }
        }
        return redirect()->route('admin_listing_view')->with('success', SUCCESS_ACTION);
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