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
        $referral = Referral::where('referrer_id',auth()->user()->id)->latest()->get();

       $data=[
        "completed"=>count($referral),
        "pending"=>0,
        'code'=> "ref-".auth()->user()->id,
        'total_earn'=> $referral->sum('amount_earn'),
        'referrals_list'=> $referral
       ];
        return response()->json(['referral' => $data], 200);
    }


}
