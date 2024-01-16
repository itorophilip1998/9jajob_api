<?php

namespace App\Http\Controllers\API;


use DB;
use App\Models\Review;
use App\Models\Listing;
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
        if ($isRated) return response()->json(['message' => 'Listing Already Rated'], 200);



        $obj = new Review;
        $obj->listing_id = $request->listing_id;
        $obj->agent_id = $user_detail->id;
        $obj->agent_type = 'Customer';
        $obj->rating = $request->rating;
        $obj->review = $request->review;
        $obj->booking_id = $request->booking_id;
        $obj->save();

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
