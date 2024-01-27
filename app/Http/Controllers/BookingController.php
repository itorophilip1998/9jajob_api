<?php

namespace App\Http\Controllers;

use App\Models\Booking;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\StoreBookingRequest;
use App\Http\Requests\UpdateBookingRequest;
use App\Models\Listing;
use App\Models\Notification;


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
    public function updateStatus()
    { 
        $bookings = Booking::find(request()->booking_id)->update(
            request()->all()
        ); //correct

        return response()->json([
            'message' => 'Success',
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
        $booking = Booking::create($req);
        $listing_user_id = Listing::find(request()->listing_id);

        Notification::create(
            [
                'message' => "Your just Book",
                'user_id' => $listing_user_id ? $listing_user_id->user_id : 0,
                'title' => 'Booking',
                'booking_id' => $booking->id
            ]
        );
        return response()->json(['message' => 'Success!!'], 200);
    }
}