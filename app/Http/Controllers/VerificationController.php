<?php

namespace App\Http\Controllers;

use App\Models\Verification;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\StoreVerificationRequest;
use App\Http\Requests\UpdateVerificationRequest;

class VerificationController extends Controller
{

    public function create(Request $request)
    {
        $validator = Validator::make(request()->all(), [
            'listing_id' => 'required',
            'reg_number' => 'required',
            'id_card_front' => 'required',
            'id_card_back' => 'required'
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 200);
        }
         if($request->file('id_card_front')){
             $id_card_front=$request->file('id_card_front')->getClientOriginalName();
            $request->file('id_card_front')->move(public_path('uploads/verifications'), $id_card_front);
         }
         else if($request->file('id_card_back')){
            $id_card_back=$request->file('id_card_back')->getClientOriginalName();
            $request->file('id_card_back')->move(public_path('uploads/verifications'), $id_card_back);
         }
         else if($request->file('cac_document')){
            $cac_document=$request->file('cac_document')->getClientOriginalName();
            $request->file('cac_document')->move(public_path('uploads/verifications'), $cac_document);
         }
         else if($request->file('skill_certificate')){
            $skill_certificate=$request->file('skill_certificate')->getClientOriginalName();
            $request->file('skill_certificate')->move(public_path('uploads/verifications'), $skill_certificate);
         }

        $req = request()->all();
        $req['id_card_front'] = $id_card_front;
        $req['id_card_back'] = $id_card_back;
        $req['cac_document'] = $cac_document;
        $req['skill_certificate'] = $skill_certificate;
        Verification::create($req);
        return response()->json(['message' => 'Success!!'], 200);
    }

}
