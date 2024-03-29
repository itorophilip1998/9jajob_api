<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Utils\Validate;
use App\Models\Referral;
use App\Models\Transactions;
use App\Http\Requests\StoreReferralRequest;
use App\Http\Requests\UpdateReferralRequest;

class ReferralController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $pending = Referral::where(['referrer_id' => auth()->user()->id, 'amount_earn' => 0])->count();
        $referral = Referral::where('referrer_id', auth()->user()->id)->withOut('referrer')->latest()->get();
        $completed = Referral::where(['referrer_id' => auth()->user()->id])
        ->where('amount_earn', '!=', 0)->count();

        $data = [
            "completed" => $completed,
            "pending" =>  $pending,
            'code' => "ref-" . auth()->user()->id,
            'total_earn' => $referral->sum('amount_earn'),
            'referrals_list' => $referral
        ];
        return response()->json(['referral' => $data], 200);
    }
}
