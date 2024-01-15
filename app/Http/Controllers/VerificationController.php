<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Support\Str;
use App\Models\Notification;
use App\Models\Transactions;
use App\Models\Verification;
use App\Http\services\Upload;
use App\Http\services\Balance;
use Illuminate\Http\Client\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\StoreVerificationRequest;
use App\Http\Requests\UpdateVerificationRequest;

class VerificationController extends Controller
{

    public function create()
    {
        $amount = request()->amount;
        // check balance
        $balance = (new Balance)->check($amount);
        if ($balance < $amount)
            return response()->json(['error' => 'Insufficient balance'], 422);

        $validator = Validator::make(request()->all(), [
            'listing_id' => 'required',
            'reg_number' => 'required',
            'id_card_front' => 'required|file',
            'id_card_back' => 'required|file'
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 422);
        }


        // check balance

        $totalBalance = Transactions::where(['user_id' => auth()->user()->id])->get()->sum('amount');
        if ($totalBalance < 1000) {
            return response()->json(['message' => 'insufficient fund'], 200);
        }
        $req = request()->all();

        if (request()->hasFile('id_card_front')) {
            $id_card_front = request()->file('id_card_front')->getClientOriginalName();
            request()->file('id_card_front')->move(public_path('uploads/verifications'), $id_card_front);
            $req['id_card_front'] = $id_card_front;
        }
        if (request()->hasFile('id_card_back')) {
            $id_card_back = request()->file('id_card_back')->getClientOriginalName();
            request()->file('id_card_back')->move(public_path('uploads/verifications'), $id_card_back);
            $req['id_card_back'] = $id_card_back;
        }
        if (request()->hasFile('proof_address')) {
            $proof_address = request()->file('proof_address')->getClientOriginalName();
            request()->file('proof_address')->move(public_path('uploads/verifications'), $proof_address);
            $req['proof_address'] = $proof_address;
        }
        if (request()->hasFile('cac_document')) {
            $item = request()->file('cac_document');
            $cac_document =  (new Upload)->image($item, 'uploads/verifications');
            $req['cac_document'] = $cac_document;
        }

        if (request()->hasFile('skill_certificate')) {
            $skill_certificate = request()->file('skill_certificate')->getClientOriginalName();
            request()->file('skill_certificate')->move(public_path('uploads/verifications'), $skill_certificate);
            $req['skill_certificate'] = $skill_certificate;
        }
        if (is_array(request()->services)) {
            $req['services'] = json_encode(request()->services);
        }

        $isVerified = Verification::where('listing_id', $req['listing_id'])->first();

        if (isset($isVerified) && $isVerified->status == 'pending') return response()->json(['message' => 'Verification In Progress!'], 200);
        else if (isset($isVerified) &&  $isVerified->status != 'completed') return response()->json(['message' => 'Verification Completed Already!'], 200);


        Verification::create($req);
        // send transaction
        $ref_number = Str::random(10);
        $transaction = [
            'user_id' => auth()->user()->id,
            'type' => 'debit',
            'status' => 'success', //debit, credit
            'ref_number' => $ref_number,
            'trans_id' => $ref_number,
            'amount' => 1000,
            'description' => "Verification from " . auth()->user()->name,
            'purpose' => 'verification', //verification ,packages, top-up, withdrawal,referrals, boost]

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
        Notification::create(
            [
                'message' => $transaction['description'],
                'user_id' => auth()->user()->id,
                'title' => 'Verification'
            ]
        );
        return response()->json(['message' => 'Verification In Progress!!!'], 200);
    }
    public function listOfVerifications()
    {
        $status = request()->input('status');


        // Start with a base query
        $query = Verification::query();

        // Add conditions only for parameters with values
        if ($status !== null) {
            $query->where('status', $status);
        }

        // Execute the query
        $verification = $query->get();

        return response()->json(['Counts' => count($verification), "verification" => $verification], 200);
    }

    public function updateVerifications($id)
    {
        Verification::where('listing_id', $id)->update(request()->all());
        return response()->json(["message" => 'Verification Updated!!'], 200);
    }
}
