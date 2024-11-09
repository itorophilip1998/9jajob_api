<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Listing;
use App\Models\Boosting;
use App\Services\Notify;
use Illuminate\Support\Str;
use App\Models\Notification;
use App\Models\Transactions;
use App\Http\services\Balance;
use App\Mail\SystemMailNotification;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\StoreBoostingRequest;
use App\Http\Requests\UpdateBoostingRequest;

class BoostingController extends Controller
{


    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {


        $amount = request()->amount;
        // check balance
        $balance = (new Balance)->check($amount);
        if ($balance < $amount)
            return response()->json(['error' => 'Insufficient balance'], 422);
        $validator = Validator::make(request()->all(), [
            'listing_id' => 'required',
            'start_date' => 'required|date',
            'end_date' => 'required|date',
            'duration' => 'required',
            'amount' => 'required'
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 422);
        }


        $isVerified = Boosting::where(['listing_id' => request()->listing_id])->latest()->first();
        $isMyListing = Listing::find(request()->listing_id);

        if (!$isMyListing) return response()->json(['message' => 'No Listing Found!'], 200);
        if (isset($isMyListing) &&  $isMyListing->user_id != auth()->user()->id) return response()->json(['message' => 'This is not your Listing!'], 200);
        if (isset($isVerified) && $isVerified->status == 'active') return response()->json(['message' => 'Boosting already existed!'], 200);

        $req = request()->all();
        $req['status'] = 'active';
        Boosting::create($req);
        // send transaction
        $ref_number = Str::random(10);
        $transaction = [
            'user_id' => auth()->user()->id,
            'type' => 'debit',
            'status' => 'success', //debit, credit
            'ref_number' => $ref_number,
            'trans_id' => $ref_number,
            'amount' => request()->amount,
            'description' => "Congratulation!!!, You Just Boost your Business($isMyListing?->listing_name), this means your business will be enlisted in the top listings of Sabifix",
            'purpose' => 'boost', //verification ,packages, top-up, withdrawal,referrals, boost]

        ];
        Transactions::create($transaction);

        $notification =
            [
                'message' =>
                $transaction['description'],
                'user_id' => auth()->user()->id,
                'title' => 'Boosting'
            ];


        (new Notify)->trigger($notification);
        try {


            $start_date = Carbon::parse(request()->start_date);
            $end_date = Carbon::parse(request()->end_date);
            $boostingMail = [
                'subject' => 'Business Boost Successfully Activated on Sabifix',
                'user' => auth()->user()->name,
                'view' => 'mail.boostingMail',
                'start_date' => $start_date?->format('jS F, Y'),
                'end_date' => $end_date?->format('jS F, Y'),
            ];
            //   dump($boostingMail);

            Mail::to(auth()->user()->email)->queue(new SystemMailNotification($boostingMail));
        } catch (\Throwable $th) {
            //  throw $th;
        }
        return response()->json(['message' => 'Boosting Initiated!!!'], 200);
    }
}
