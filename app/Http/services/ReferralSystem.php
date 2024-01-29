<?php

namespace App\Http\services;

use Carbon\Carbon;
use App\Models\User;
use App\Models\Referral;
use App\Services\Notify;
use Illuminate\Support\Str;
use App\Models\Notification;
use App\Models\Transactions;
use Illuminate\Support\Facades\Mail;


class ReferralSystem
{

    public function referred()
    {

        // create referral and transaction if user include the code
        $ref_code = auth()->user()->referrer_code;
        if (!$ref_code) {
            return false;
        }
        $newCode = substr($ref_code, 6);
        if ($ref_code !== null) {
            $ref = Referral::updateOrCreate([
                "user_id" => auth()->user()->id,
                'referrer_id' => $newCode,
            ], [
                'user_id' => auth()->user()->id,
                'referrer_id' => $newCode,
                'ref_code' => $ref_code,
                'amount_earn' => 150,
            ]);
            $ref_number = Str::random(10);
            $transaction = [
                'user_id' => $newCode,
                'type' => 'credit',
                'status' => 'success', //debit, credit
                'ref_number' => $ref_number,
                'trans_id' => $ref_number,
                'amount' => $ref["amount_earn"],
                'description' => "referrals withdrawal from " . auth()->user()->name,
                'purpose' => 'referrals', //verification ,packages, top-up, withdrawal,referrals, boost]
                'referral_code' => $ref_code,
            ];
            Transactions::create($transaction);

            // send invioce
            $referrer_name = User::find($newCode);
            $item = [
                "invoiceNumber" => rand(1111, 9999),
                "invoiceDate" => Carbon::now()->format("d M, Y"),
                "user" => $referrer_name->name,
                "purpose" => $transaction["purpose"],
                "status" => $transaction["status"],
                "ref_number" => $transaction["ref_number"],
                "amount" => $transaction["amount"],
                'description' => 'You Referred ' . auth()->user()->name . ' And earn ' . $ref["amount_earn"],

            ];


            $notification =
            [
                'message' => 'You Referred ' . auth()->user()->name . ' And earn ' . $ref["amount_earn"],
                'user_id' => auth()->user()->id,
                'title' => "Listing "
            ];
            (new Notify)->trigger($notification);
            try {
                Mail::send('mail.invioce', ['item' => $item], function ($message) use ($referrer_name) {
                    $message->to($referrer_name->email);
                    $message->subject('Invioce');
                });
            } catch (\Throwable $th) {
                //throw $th;
            }
        }
    }
}
