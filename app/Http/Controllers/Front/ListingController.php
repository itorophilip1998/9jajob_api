<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Mail\ListingPageMessage;
use App\Mail\ListingPageReport;
use App\Models\EmailTemplate;
use App\Models\GeneralSetting;
use App\Models\Listing;
use App\Models\ListingAdditionalFeature;
use App\Models\ListingAmenity;
use App\Models\ListingCategory;
use App\Models\ListingLocation;
use App\Models\ListingPhoto;
use App\Models\ListingSocialItem;
use App\Models\ListingVideo;
use App\Models\Amenity;
use App\Models\PageListingCategoryItem;
use App\Models\PageListingItem;
use App\Models\PageListingLocationItem;
use App\Models\Review;
use App\Models\Wishlist;
use App\Models\User;
use App\Models\Admin;
use Illuminate\Http\Request;
use DB;
use Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Pagination\Paginator;

class ListingController extends Controller
{
    public function index()
    {
        abort(404);
    }

    public function detail($slug)
    {
        $g_setting = GeneralSetting::where('id', 1)->first();
        $detail = Listing::with('rListingLocation', 'rListingCategory')
            ->where('listing_slug', $slug)
            ->first();

        $listing_social_items = ListingSocialItem::where('listing_id', $detail->id)->get();
        $listing_photos = ListingPhoto::where('listing_id', $detail->id)->get();
        $listing_videos = ListingVideo::where('listing_id', $detail->id)->get();
        $listing_amenities = ListingAmenity::where('listing_id', $detail->id)->get();
        $listing_additional_features = ListingAdditionalFeature::where('listing_id', $detail->id)->get();
        $listing_categories = ListingCategory::orderBy('listing_category_name', 'asc')->get();
        $listing_locations = ListingLocation::orderBy('listing_location_name', 'asc')->get();

        $reviews = Review::where('listing_id', $detail->id)
            ->orderBy('id', 'asc')
            ->get();

        // Getting overall rating
        if ($reviews->isEmpty()) {
            $overall_rating = 0;
        } else {
            $total_number = 0;
            $count = 0;
            foreach ($reviews as $item) {
                $count++;
                $total_number = $total_number + $item->rating;
            }
            $overall_rating = $total_number / $count;
            if ($overall_rating > 0 && $overall_rating <= 1) {
                $overall_rating = 1;
            } elseif ($overall_rating > 1 && $overall_rating <= 1.5) {
                $overall_rating = 1.5;
            } elseif ($overall_rating > 1.5 && $overall_rating <= 2) {
                $overall_rating = 2;
            } elseif ($overall_rating > 2 && $overall_rating <= 2.5) {
                $overall_rating = 2.5;
            } elseif ($overall_rating > 2.5 && $overall_rating <= 3) {
                $overall_rating = 3;
            } elseif ($overall_rating > 3 && $overall_rating <= 3.5) {
                $overall_rating = 3.5;
            } elseif ($overall_rating > 3.5 && $overall_rating <= 4) {
                $overall_rating = 4;
            } elseif ($overall_rating > 4 && $overall_rating <= 4.5) {
                $overall_rating = 4.5;
            } elseif ($overall_rating > 4.5 && $overall_rating <= 5) {
                $overall_rating = 5;
            }
        }

        if ($detail->user_id == 0) {
            $agent_detail = Admin::where('id', $detail->admin_id)->first();
        } elseif ($detail->admin_id == 0) {
            $agent_detail = User::where('id', $detail->user_id)->first();
        }

        $current_auth_user_id = 0;
        if (Auth::user()) {
            $current_auth_user_id = Auth::user()->id;
        }

        // If he already given review for this item
        $already_given = 0;
        $already_given = Review::where('listing_id', $detail->id)
            ->where('agent_id', $current_auth_user_id)
            ->where('agent_type', 'Customer')
            ->count();

        return view('front.listing_detail', compact('detail', 'g_setting', 'listing_social_items', 'listing_photos', 'listing_videos', 'listing_amenities', 'listing_additional_features', 'listing_categories', 'listing_locations', 'agent_detail', 'reviews', 'current_auth_user_id', 'already_given', 'overall_rating'));
    }

    public function category_all()
    {
        $g_setting = GeneralSetting::where('id', 1)->first();
        $listing_category_page_data = PageListingCategoryItem::where('id', 1)->first();
        $orderwise_listing_categories = DB::select('SELECT *
                        FROM listing_categories as r1
                        LEFT JOIN (SELECT listing_category_id, count(*) as total
                            FROM listings as l
                            JOIN listing_categories as lc
                            ON l.listing_category_id = lc.id
                            GROUP BY listing_category_id
                            ORDER BY total DESC) as r2
                        ON r1.id = r2.listing_category_id
                        ORDER BY r2.total DESC');
        return view('front.listing_categories', compact('g_setting', 'listing_category_page_data', 'orderwise_listing_categories'));
    }

    public function category_detail($slug)
    {
        $g_setting = GeneralSetting::where('id', 1)->first();
        $listing_category_page_data = PageListingCategoryItem::where('id', 1)->first();
        $listing_category_detail = ListingCategory::where('listing_category_slug', $slug)->first();
        $listing_items = Listing::with('rListingCategory', 'rListingLocation')->where('listing_category_id', $listing_category_detail->id)->paginate(15);
        return view('front.listing_category_detail', compact('g_setting', 'listing_category_detail', 'listing_items', 'listing_category_page_data'));
    }

    public function location_detail($slug)
    {
        $g_setting = GeneralSetting::where('id', 1)->first();
        $listing_location_page_data = PageListingLocationItem::where('id', 1)->first();
        $listing_location_detail = ListingLocation::where('listing_location_slug', $slug)->first();
        $listing_items = Listing::with('rListingCategory', 'rListingLocation')->where('listing_location_id', $listing_location_detail->id)->paginate(15);
        return view('front.listing_location_detail', compact('g_setting', 'listing_location_detail', 'listing_items', 'listing_location_page_data'));
    }

    public function agent_detail($type, $id)
    {

        $g_setting = GeneralSetting::where('id', 1)->first();

        if ($type == 'admin') {
            $agent_detail = Admin::where('id', $id)->first();
            $all_listings = Listing::with('rListingCategory', 'rListingLocation')
                ->where('admin_id', $id)
                ->where('listing_status', 'Active')
                ->paginate(15);
        } else {
            $agent_detail = User::where('id', $id)->first();
            $all_listings = Listing::with('rListingCategory', 'rListingLocation')
                ->where('user_id', $id)
                ->where('listing_status', 'Active')
                ->paginate(15);
        }
        return view('front.listing_agent_detail', compact('g_setting', 'agent_detail', 'all_listings'));
    }

    public function listing_result(Request $request)
    {
        $g_setting = GeneralSetting::where('id', 1)->first();
        $listing_page_data = PageListingItem::where('id', 1)->first();
        $listing_categories = ListingCategory::get();
        $listing_locations = ListingLocation::get();
        $amenities = Amenity::get();

        $all_text = $request->text;
        $category_id = $request->category;
        $location_id = $request->location;
        $amenity_id = $request->amenity;

        $listing_items = DB::table('listings');

        if ($request->text != '') {
            $listing_items = $listing_items->where('listings.listing_name', 'LIKE', '%' . $request->text . '%');
        }

        if ($request->category != '') {
            $listing_items = $listing_items->where('listings.listing_category_id', $request->category);
        }


        if ($request->location != '') {
            $listing_items = $listing_items->where('listings.listing_address', 'LIKE', '%' . $request->location . '%');
        }

        $listing_items = $listing_items->join('listing_categories', 'listings.listing_category_id', '=', 'listing_categories.id');

        $listing_items = $listing_items->where('listings.listing_status', 'Active');
        $listing_items = $listing_items->select(
            'listings.*',
            'listing_categories.listing_category_name',
            'listing_categories.listing_category_slug'
        );
        $listing_items = $listing_items->paginate(20);

        return view('front.listing_result', compact('g_setting', 'listing_page_data', 'listing_items', 'listing_categories', 'listing_locations', 'amenities', 'all_text', 'category_id', 'location_id', 'amenity_id'));
    }

    public function send_message(Request $request)
    {

        if (env('PROJECT_MODE') == 0) {
            return redirect()->back()->with('error', env('PROJECT_NOTIFICATION'));
        }

        $g_setting = GeneralSetting::where('id', 1)->first();
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'message' => 'required'
        ], [
            'name.required' => ERR_NAME_REQUIRED,
            'email.required' => ERR_EMAIL_REQUIRED,
            'email.email' => ERR_EMAIL_INVALID,
            'message.required' => ERR_MESSAGE_REQUIRED
        ]);

        if ($g_setting->google_recaptcha_status == 'Show') {
            $request->validate([
                'g-recaptcha-response' => 'required'
            ], [
                'g-recaptcha-response.required' => ERR_RECAPTCHA_REQUIRED
            ]);
        }

        $listing_name = $request->listing_name;
        $listing_url = '<a href="' . url('listing/' . $request->listing_slug) . '">' . url('listing/' . $request->listing_slug) . '</a>';
        $agent_name = $request->agent_name;

        // Send Email
        $email_template_data = EmailTemplate::where('id', 9)->first();
        $subject = $email_template_data->et_subject;
        $message = $email_template_data->et_content;

        $message = str_replace('[[agent_name]]', $agent_name, $message);
        $message = str_replace('[[listing_name]]', $listing_name, $message);
        $message = str_replace('[[listing_url]]', $listing_url, $message);
        $message = str_replace('[[name]]', $request->name, $message);
        $message = str_replace('[[email]]', $request->email, $message);
        $message = str_replace('[[phone]]', $request->phone, $message);
        $message = str_replace('[[message]]', $request->message, $message);

        Mail::to($request->agent_email)->queue(new ListingPageMessage($subject, $message));

        return redirect()->back()->with('success', SUCCESS_MESSAGE_SENT);
    }

    public function report_listing(Request $request)
    {

        if (env('PROJECT_MODE') == 0) {
            return redirect()->back()->with('error', env('PROJECT_NOTIFICATION'));
        }

        $g_setting = GeneralSetting::where('id', 1)->first();
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'message' => 'required'
        ], [
            'name.required' => ERR_NAME_REQUIRED,
            'email.required' => ERR_EMAIL_REQUIRED,
            'email.email' => ERR_EMAIL_INVALID,
            'message.required' => ERR_MESSAGE_REQUIRED,
        ]);

        if ($g_setting->google_recaptcha_status == 'Show') {
            $request->validate([
                'g-recaptcha-response' => 'required'
            ], [
                'g-recaptcha-response.required' => ERR_RECAPTCHA_REQUIRED
            ]);
        }

        $listing_name = $request->listing_name;
        $listing_url = '<a href="' . url('listing/' . $request->listing_slug) . '">' . url('listing/' . $request->listing_slug) . '</a>';

        // Send Email
        $email_template_data = EmailTemplate::where('id', 10)->first();
        $subject = $email_template_data->et_subject;
        $message = $email_template_data->et_content;

        $message = str_replace('[[listing_name]]', $listing_name, $message);
        $message = str_replace('[[listing_url]]', $listing_url, $message);
        $message = str_replace('[[name]]', $request->name, $message);
        $message = str_replace('[[email]]', $request->email, $message);
        $message = str_replace('[[phone]]', $request->phone, $message);
        $message = str_replace('[[message]]', $request->message, $message);

        $admin_data = Admin::where('id', 1)->first();

        Mail::to($admin_data->email)->queue(new ListingPageReport($subject, $message));

        return redirect()->back()->with('success', SUCCESS_REPORT_SENT);
    }

    public function wishlist_add($id)
    {

        if (env('PROJECT_MODE') == 0) {
            return redirect()->back()->with('error', env('PROJECT_NOTIFICATION'));
        }

        if (Auth::user() == null) {
            return redirect()->back()->with('error', ERR_LOGIN_FIRST);
        }

        $check_previous = Wishlist::where('listing_id', $id)->count();
        if ($check_previous > 0) {
            return redirect()->back()->with('error', ERR_ALREADY_TO_WISHLIST);
        }

        $user_data = Auth::user();

        $obj = new Wishlist;
        $obj->user_id = $user_data->id;
        $obj->listing_id = $id;
        $obj->save();

        return redirect()->back()->with('success', SUCCESS_WISHLIST_ADD);
    }
}
