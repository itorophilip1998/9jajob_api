<?php

namespace App\Http\Controllers\API;


use DB;
use App\Models\User;
use App\Models\Review;
use App\Models\Booking;
use App\Models\Listing;
use App\Services\Notify;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class ReviewController extends Controller
{


    public function index($listing_id)
    {
        $category = Review::where("listing_id", $listing_id)->get();
        return response()->json($category, 200);
    }

    public function create(Request $request)
    {
        $user_detail = auth()->user();

        $isRated = Review::where(['agent_id' => $user_detail->id, 'listing_id' => $request->listing_id])->first();
        if ($isRated) return response()->json(['message' => 'Listing already reviewed!'], 200);
        $listing_user_id = Listing::find(request()->listing_id) ?? 0;
        $booking_user_id = Booking::find(request()->booking_id) ?? 0;
        $user = 0;
        if ($listing_user_id) {
            $user = User::find($listing_user_id?->user_id);
        } else if ($booking_user_id) {
            $user = User::find($booking_user_id?->user_id);
        }
        $user_name = auth()->user()->name;
        $obj = new Review;
        $obj->listing_id = $request->listing_id ?? 0;
        $obj->agent_id = $user_detail->id;
        $obj->agent_type = 'Customer';
        $obj->rating = $request->rating;
        $obj->review = $request->review;
        $obj->booking_id = $request?->booking_id ?? 0;
        $obj->save();
        (new Notify)->trigger([
            'message' =>   $request->review,
            'user_id' => $request?->id ?? 0,
            'title' => "Review",
            'booking_id' => 0
        ]);
        return  response()->json(['message' => "Success"], 200);
    }

    public function delete($id)
    {


        $obj = Review::findOrFail($id);
        $obj->delete();
        return
            response()->json(['message' => "Success"], 200);
    }
}
