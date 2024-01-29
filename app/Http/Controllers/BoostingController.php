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

        if ($isMyListing->user_id != auth()->user()->id) return response()->json(['message' => 'This is not your Boosting!'], 200);

        if (isset($isVerified) && $isVerified->status == 'active') return response()->json(['message' => 'Boosting In Progress!'], 200);
        else if (isset($isVerified) &&  $isVerified->status != 'in-active') return response()->json(['message' => 'Boosting Completed Already!'], 200);
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
            'description' => "Congratulation!!!, You Just Boost your Business($isMyListing->listing_name), this means your business will be enlisted in the top listings of 9jajob",
            'purpose' => 'boost', //verification ,packages, top-up, withdrawal,referrals, boost]

        ];
        Transactions::create($transaction);

        // send invioce
        $item = [
            "invoiceNumber" => rand(1111, 9999),
            "invoiceDate" => Carbon::now()->format("d M, Y"),
            "user" => auth()->user()->name,
            "purpose" => $transaction["purpose"],
            "status" => $transaction["status"],
            "ref_number" => $transaction["ref_number"],
            "amount" => $transaction["amount"],
            "description"=>$transaction['description'],
        ];

        $notification =
            [
                'message' =>
                $transaction['description'],
                'user_id' => auth()->user()->id,
                'title' => 'Boosting'
            ];


        (new Notify)->trigger($notification);
        try {

            Mail::send('mail.invioce',  ['item' => $item], function ($message) {
                $message->to(auth()->user()->email);
                $message->subject('Invioce');
            });
        } catch (\Throwable $th) {
            //throw $th;
        }
        return response()->json(['message' => 'Booting In Progress!!!'], 200);
    }
}