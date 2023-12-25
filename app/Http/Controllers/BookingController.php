<?php

namespace App\Http\Controllers;

use App\Models\Booking;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\StoreBookingRequest;
use App\Http\Requests\UpdateBookingRequest;

class BookingController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $user_id = auth()->user()->id;
        $booked = Booking::whereHas('listings', function ($query) use ($user_id) {
            $query->where('user_id', $user_id);
        })->get();

        $bookings = Booking::where("user_id", $user_id)->get(); //correct

        return response()->json([
            'booked' => $booked,
            'bookings' => $bookings,

        ], 200);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function book()
    {
        $validator = Validator::make(request()->all(), [
            'listing_id' => 'required',
            'date' => 'required',
            'time' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 422);
        }
        $req = request()->all();
        $req['user_id'] = auth()->user()->id;
        Booking::create($req);
        return response()->json(['message' => 'Success!!'], 200);
    }
}