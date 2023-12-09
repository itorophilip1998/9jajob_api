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
        $address_longitude = request()->input('address_longitude');
        $address_latitude = request()->input('address_latitude');
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

        if ($listing_name !== null) {
            $query->where('listing_name', 'LIKE', '%' . $listing_name . '%');
        }
        if ($listing_city !== null) {
            $query->whereHas('rListingLocation', function ($q) use ($listing_city) {
                $q->where('listing_address', 'LIKE', '%' . $listing_city . '%');
            });
        }

        if ($address_longitude !== null && $address_latitude !== null) {
            $query->where(['address_longitude' => $address_longitude, 'address_latitude' => $address_latitude]);
        }


        if ($is_trending == true) {
            $query->has('reviews', '>=', 1);
        }

        // Execute the query
        $listing = $query->get();

        return response()->json(['Counts' => count($listing), "listing" => $listing], 200);
    }

    public function myListings()
    {
        $data = Listing::where("user_id", auth()->user()->id)->get();
        return response()->json($data, 200);
    }

    public function AddListings()
    {

        $user_data = Auth::user();
        $validator = Validator::make(request()->all(), [
            'listing_name' => 'required|unique:listings',
            'listing_description' => 'required',
            'listing_phone' => 'required',
            'listing_address' => 'required',
            'listing_featured_photo' => 'required|image|mimes:jpeg,png,jpg,gif,heic',
        ]);
        // dd(request()->all());

        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 200);
        }
        $statement = DB::select("SHOW TABLE STATUS LIKE 'listings'");
        $ai_id = $statement[0]->Auto_increment;
        $rand_value = md5(mt_rand(11111111, 99999999));
        $ext = request()->file('listing_featured_photo')->extension();
        $final_name = $rand_value . '.' . $ext;
        request()->file('listing_featured_photo')->move(public_path('uploads/listing_featured_photos'), $final_name);

        $obj = new Listing();
        $data = request()->only($obj->getFillable());
        if (empty($data['listing_slug'])) {
            unset($data['listing_slug']);
            $data['listing_slug'] = Str::slug(request()->listing_name);
        }
        if (preg_match('/\s/', $data['listing_slug'])) {
            return response()->json(['error' => "No Spacing"], 422);
        }
        $data['listing_featured_photo'] = $final_name;
        $data['user_id'] = $user_data->id;
        $data['admin_id'] = 0;
        $data['listing_status'] = "Active";
        $obj->fill($data)->save();


        // Amenity
        if (is_array(request()->amenity) || is_object(request()->amenity)) {
            $arr_amenity = array();
            foreach (request()->amenity as $item) {
                $arr_amenity[] = $item;
            }
            for ($i = 0; $i < count($arr_amenity); $i++) {
                $obj = new ListingAmenity;
                $obj->listing_id = $ai_id;
                $obj->amenity_id = $arr_amenity[$i];
                $obj->save();
            }
        }

        // Photo

        if (is_array(request()->photo_list) || is_object(request()->photo_list)) {
            foreach (request()->photo_list as $item) {

                $main_file_ext = $item->extension();
                $main_mime_type = $item->getMimeType();
                if (($main_mime_type == 'image/jpeg' || $main_mime_type == 'image/png' || $main_mime_type == 'image/gif')) {
                    $rand_value = md5(mt_rand(11111111, 99999999));
                    $final_photo_name = $rand_value . '.' . $main_file_ext;
                    $item->move(public_path('uploads/listing_photos'), $final_photo_name);

                    $obj = new ListingPhoto;
                    $obj->listing_id = $ai_id;
                    $obj->photo = $final_photo_name;
                    $obj->save();
                }
            }
        } else {
            return response()->json(['error' => "No Photo List Selected"], 422);
        }

        // Video
        if (is_array(request()->youtube_video_id) || is_object(request()->youtube_video_id)) {
            $arr_youtube_video_id = array();
            foreach (request()->youtube_video_id as $item) {
                $arr_youtube_video_id[] = $item;
            }
            for ($i = 0; $i < count($arr_youtube_video_id); $i++) {
                if ($arr_youtube_video_id[$i] != '') {
                    $obj = new ListingVideo;
                    $obj->listing_id = $ai_id;
                    $obj->youtube_video_id = $arr_youtube_video_id[$i];
                    $obj->save();
                }
            }
        }

        // Social Icons
        if (is_array(request()->socialMedia) || is_object(request()->socialMedia)) {

            foreach (request()->socialMedia as $item) {
                $arr_social_icon = $item["arr_social_icon"];
                $arr_social_url = $item["arr_social_url"];
                $obj = new ListingSocialItem;
                $obj->listing_id = $ai_id;
                $obj->social_icon = $arr_social_icon[$i];
                $obj->social_url = $arr_social_url[$i];
                $obj->save();
            }

        }


        // Additional Features
        if ( is_array(request()->additional_feature_name) || is_object(request()->additional_feature_name)) {
            $arr_additional_feature_name = array();
            $arr_additional_feature_value = array();
            foreach (request()->additional_feature_name as $item) {
                $arr_additional_feature_name[] = $item;
            }
            foreach (request()->additional_feature_value as $item) {
                $arr_additional_feature_value[] = $item;
            }
            for ($i = 0; $i < count($arr_additional_feature_name); $i++) {
                if (($arr_additional_feature_name[$i] != '') && ($arr_additional_feature_value[$i] != '')) {
                    $obj = new ListingAdditionalFeature;
                    $obj->listing_id = $ai_id;
                    $obj->additional_feature_name = $arr_additional_feature_name[$i];
                    $obj->additional_feature_value = $arr_additional_feature_value[$i];
                    $obj->save();
                }
            }

        }
        $Listings=Listing::find($obj->id);
        return response()->json(['message' => "Success!!",  "listing" => $Listings], 200);
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

        if (env('PROJECT_MODE') == 0) {
            return redirect()->back()->with('error', env('PROJECT_NOTIFICATION'));
        }

        $listing = Listing::findOrFail($id);
        unlink(public_path('uploads/listing_featured_photos/' . $listing->listing_featured_photo));
        $listing->delete();

        ListingAmenity::where('listing_id', $id)->delete();
        ListingSocialItem::where('listing_id', $id)->delete();
        ListingVideo::where('listing_id', $id)->delete();
        ListingAdditionalFeature::where('listing_id', $id)->delete();

        $all_photos = ListingPhoto::where('listing_id', $id)->get();
        foreach ($all_photos as $item) {
            unlink(public_path('uploads/listing_photos/' . $item->photo));
        }

        ListingPhoto::where('listing_id', $id)->delete();

        // Success Message and redirect
        return Redirect()->back()->with('success', SUCCESS_ACTION);
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
