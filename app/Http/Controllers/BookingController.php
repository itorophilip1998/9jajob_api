<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Booking;
use App\Models\Listing;
use App\Services\Notify;
use App\Models\Notification;
use App\Mail\SystemMailNotification;
use Illuminate\Support\Facades\Mail;
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
        $client = User::find($booking->user_id);

        $status = request()->isModify ? 'modify' : request()->status;
        $userDetails = [
            'message' => "You just $status a booking $client?->listing_name",
            'user_id' => $user->id ?? 0,
            'title' => "Booking",
            'booking_id' => $booking->id ?? 0
        ];
        $clientDetails = [
            'message' => "Booking was $status by $user->name",
            'user_id' => $client?->id,
            'title' => "Booking",
            'booking_id' => $booking->id ?? 0
        ];
        (new Notify)->trigger($userDetails);
        (new Notify)->trigger($clientDetails);

        $booking->update(
            request()->all()
        ); //correct

        switch (request()->status) {
            case 'pending':
                $this->pendingBook($client, $user, $booking);
                break;
            case 'accepted':
                $this->acceptBooking($client, $user, $booking);
                break;
            case 'cancelled':
                $this->canceledBooking($client, $user, $booking);
                break;
            case 'completed':
                $this->completeBooking($client, $user, $booking);
                break;
            default:
                # code...
                break;
        }

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
        $client = User::find($listing_user_id?->user_id);
        $user = auth()->user();

        $clientDetails = [
            'message' => "You just book $user->name, you have an option to cancel booking or modify the booking",
            'user_id' => $client->id ?? 0,
            'title' => "Booking",
            'booking_id' => $booking->id ?? 0
        ];
        $userDetails = [
            'message' => "You where booked by $client->name, you have an option to decline or accept the booking",
            'user_id' =>  $user->id ?? 0,
            'title' => "Booking",
            'booking_id' => $booking->id ?? 0
        ];

        (new Notify)->trigger($clientDetails);
        (new Notify)->trigger($userDetails);
         $this->pendingBook($client, $user, $booking);
        return response()->json(['message' => 'Success!!'], 200);
    }

    public function pendingBook($user, $client ,$booking)
    {
        try {

            $item = [
                "user" => $user?->name,
                'view' => 'mail.bookingMail',
                'subject' => 'Appointment Confirmation',
                'amount' => request()->amount,
                'mailMessage' => "Your appointment has been successfully scheduled. If you need to make any changes or wish to cancel/accept the booking, please log in to your account on our platform and manage your bookings accordingly.\n Thank you for choosing",
                "mailInfo" => "You have pending booking from $client?->name",
               'booking'=> $booking
            ];
            // return $user->email;
            Mail::to($user?->email)->queue(new SystemMailNotification($item));
        } catch (\Throwable $th) {
            // throw $th;
        }
    }
    public function acceptBooking($user, $client,$booking)
    {

        try {

            $item = [
                "user" => $client?->name,
                'view' => 'mail.bookingMail',
                'subject' => "Booking Accepted - Let's Get Started!",
                'amount' => request()->amount,
                'mailMessage' => "We believe in the importance of punctuality and quality service. Remember, one good turn deserves another, so we urge you to finish your job on time and meet your client's expectations.",
                "mailInfo" => "You have accepted a booking from $user?->name",
               'booking'=> $booking

            ];
            Mail::to($client?->email)->queue(new SystemMailNotification($item));
        } catch (\Throwable $th) {
            //throw $th;
        }
    }

    public function canceledBooking($user, $client,$booking)
    {
        try {
            $item = [
                "user" => $client?->name,
                'view' => 'mail.bookingMail',
                'subject' => "Booking Canceled - Let's Get Started!",
                'amount' => request()->amount,
                'mailMessage' => "Should you have any questions or wish to discuss the reason for the cancellation and explore options for rescheduling, please feel free to reach out to the service provider via our 9jajob chatting medium or by calling directly",
                "mailInfo" => "We regret to inform you that your booking has been canceled by $user?->name",
                'booking'=> $booking
            ];
            Mail::to($client?->email)->queue(new SystemMailNotification($item));
        } catch (\Throwable $th) {
            //throw $th;
        }
    }
    public function completeBooking($user, $client,$booking)
    {
        try {
            $item = [
                "user" => $user?->name,
                'view' => 'mail.bookingMail',
                'subject' => "Booking Completed - Your Feedback Matters!",
                'amount' => request()->amount,
                'mailMessage' => "We hope you were satisfied with the service provided. Your feedback is valuable to us and every 9jajob user. You can now rate the service provider's work and write a review based on your experience.
\n Thank you for choosing us. \n We look forward to serving you again in the future!",
                "mailInfo" => "Your booking has been successfully completed.",
                'booking'=> $booking
            ];
            Mail::to($user?->email)->queue(new SystemMailNotification($item));
        } catch (\Throwable $th) {
            //throw $th;
        }
    }
}
