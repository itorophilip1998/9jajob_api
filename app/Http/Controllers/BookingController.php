<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Booking;
use App\Models\Listing;
use App\Services\Notify;
use App\Models\Notification;
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
    public function updateStatus()
    {
        $validator = Validator::make(request()->all(), [
            'status' => 'required',
            'booking_id' => 'required',
        ]);
        //Send failed response if request is not valid
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 422);
        }
        $booking = Booking::find(request()->booking_id);
        $listing_user_id = Listing::find($booking->listing_id) ?? 0;
        $user = User::find($listing_user_id->user_id);
        $authUser = auth()->user();
        $status = request()->isModify ? 'modify' : request()->status;
        $user1 = [
            'message' => "You just $status the booking with $user->name",
            'user_id' => $authUser->id ?? 0,
            'title' => "Booking",
            'booking_id' => $booking->id ?? 0
        ];
        $user2 = [
            'message' => "Booking was $status by $authUser->name",
            'user_id' => $booking->user_id ?? 0,
            'title' => "Booking",
            'booking_id' => $booking->id ?? 0
        ];
        (new Notify)->trigger($user1);
        (new Notify)->trigger($user2);

        $booking->update(
            request()->all()
        ); //correct

        return response()->json([
            'message' => 'Success',
            'bookings' => $booking,

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
        $listing_user_id = Listing::find(request()->listing_id) ?? 0;
        $user = User::find($listing_user_id?->user_id);
        $authUser = auth()->user();

        $user1 = [
            'message' => "You just book $user->name, you have an option to cancel booking or modify the booking",
            'user_id' => $authUser->id ?? 0,
            'title' => "Booking",
            'booking_id' => $booking->id ?? 0
        ];
        $user2 = [
            'message' => "You where booked by $authUser->name, you have an option to decline or accept the booking",
            'user_id' =>  $user->id ?? 0,
            'title' => "Booking",
            'booking_id' => $booking->id ?? 0
        ];

        (new Notify)->trigger($user1);
        (new Notify)->trigger($user2);

        return response()->json(['message' => 'Success!!'], 200);
    }
}
