<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Boosting;
use Illuminate\Support\Str;
use App\Models\Transactions;
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
        $validator = Validator::make(request()->all(), [
            'listing_id' => 'required',
            'start_date' => 'required|date',
            'end_date' => 'required|date',
            'duration' => 'required',
            'amount' => 'required'
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 200);
        }
 

        $isVerified = Boosting::where(['listing_id' => request()->listing_id])->latest()->first();

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
            'description' => "Boosting from " . auth()->user()->name,
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
        ];
        Mail::send('mail.invioce',  ['item' => $item], function ($message) {
            $message->to(auth()->user()->email);
            $message->subject('Invioce');
        });
        return response()->json(['message' => 'Booting In Progress!!!'], 200);
    }
}
