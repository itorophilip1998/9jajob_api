<?php

namespace App\Http\Controllers;

use App\Models\Verification;
use Illuminate\Http\Client\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\StoreVerificationRequest;
use App\Http\Requests\UpdateVerificationRequest;

class VerificationController extends Controller
{

    public function create()
    {
        $validator = Validator::make(request()->all(), [
            'listing_id' => 'required',
            'reg_number' => 'required',
            'id_card_front' => 'required|file',
            'id_card_back' => 'required|file'
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 200);
        }
        $req = request()->all();

        if (request()->hasFile('id_card_front')) {
            $id_card_front = request()->file('id_card_front')->getClientOriginalName();
            request()->file('id_card_front')->move(public_path('uploads/verifications'), $id_card_front);
            $req['id_card_front'] = $id_card_front;
        } else if (request()->hasFile('id_card_back')) {
            $id_card_back = request()->file('id_card_back')->getClientOriginalName();
            request()->file('id_card_back')->move(public_path('uploads/verifications'), $id_card_back);
            $req['id_card_back'] = $id_card_back;
        }
        else if (request()->hasFile('proof_address')) {
            $proof_address = request()->file('proof_address')->getClientOriginalName();
            request()->file('proof_address')->move(public_path('uploads/verifications'), $proof_address);
            $req['proof_address'] = $proof_address;
        } else if (request()->hasFile('cac_document')) {
            $cac_document = request()->file('cac_document')->getClientOriginalName();
            request()->file('cac_document')->move(public_path('uploads/verifications'), $cac_document);
            $req['cac_document'] = $cac_document;
        }

        else if (request()->hasFile('skill_certificate')) {
            $skill_certificate = request()->file('skill_certificate')->getClientOriginalName();
            request()->file('skill_certificate')->move(public_path('uploads/verifications'), $skill_certificate);
            $req['skill_certificate'] = $skill_certificate;
        }
        // $req['status'] = ;
        $isVerified = Verification::where('listing_id',$req['listing_id'])->first();

        if (isset($isVerified) && $isVerified->status == 'pending') return response()->json(['message' => 'Verification In Progress!'], 200);
        else if (isset($isVerified) &&  $isVerified->status != 'completed') return response()->json(['message' => 'Verification Completed Already!'], 200);
        Verification::create($req);
        return response()->json(['message' => 'Verification In Progress!!!'], 200);
    }
}
