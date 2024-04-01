<?php

namespace App\Http\services;

use Carbon\Carbon;
use App\Models\User;
use App\Models\Referral;
use App\Services\Notify;
use Illuminate\Support\Str;
use App\Models\Notification;
use App\Models\Transactions;
use Illuminate\Support\Facades\DB;
use App\Mail\SystemMailNotification;
use Illuminate\Support\Facades\Mail;


class ReferralSystem
{

    public function referred()
    {

        $referrals_bonus_amount = DB::table("extra_details")->first()?->referrals_bonus_amount ?? 150;
        // create referral and transaction if user include the code
        $ref_code = auth()->user()->referrer_code;
        if (!$ref_code) {
            return false;
        }
        $newCode = substr($ref_code, 6);
        if ($ref_code !== null) {
            $ref = Referral::where([
                "user_id" => auth()->user()->id,
                'referrer_id' => $newCode,
            ]);
            // update amount
            $ref->update([
                'amount_earn' => $referrals_bonus_amount,
            ]);
            $ref_number = Str::random(10);
            $transaction = [
                'user_id' => $newCode,
                'type' => 'credit',
                'status' => 'success', //debit, credit
                'ref_number' => $ref_number,
                'trans_id' => $ref_number,
                'amount' =>  $referrals_bonus_amount,
                'description' => "referrals withdrawal from " . auth()->user()->name,
                'purpose' => 'referrals', //verification ,packages, top-up, withdrawal,referrals, boost]
                'referral_code' => $ref_code,
            ];
            Transactions::create($transaction);
            $notification =
                [
                    'message' => 'You Referred ' . auth()->user()->name . ' And earn ' .  $referrals_bonus_amount,
                    'user_id' => $newCode,
                    'title' => "Listing "
                ];
            (new Notify)->trigger($notification);
            try {

                 //referrerMail
        $referrerMail=[
            'subject'=>'Referral Bonus',
            'user'=>$ref?->referrer->name,
            'referrer_username'=>auth()->user()->name,
            'amount'=>$referrals_bonus_amount,
            'view'=>'mail.referralBonus',
        ];


         Mail::to($$ref?->referrer?->email)->queue(new SystemMailNotification($referrerMail)); //referrerMail
            } catch (\Throwable $th) {
                //throw $th;
            }

    }
}
}
