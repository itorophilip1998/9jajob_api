<?php

namespace App\Http\Controllers;

use App\Models\EmailTemplate;
use App\Models\Report;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreReportRequest;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\UpdateReportRequest;
use App\Mail\ContactPageMessage;
use App\Mail\SystemMailNotification;
use Illuminate\Support\Facades\Mail;

class ReportController extends Controller
{

    public function create()
    {
        try {
            $validator = Validator::make(request()->all(), [
                'listing_id' => 'required',
                'report' => 'required',
            ]);
            if ($validator->fails()) {
                return response()->json(['error' => $validator->messages()], 422);
            }
            $req = request()->all();
            $req['reporter_id'] = auth()->user()->id;
             Report::create($req);
            $item = [
                'view' => 'mail.reportMail',
                'subject' => "Report User",
                'mailMessage' =>  request()->report,
                'fromMail' => "Mail From: " .  auth()->user()->name,
                'userInfo' => "Listing ID Reported: " .  $req['reporter_id']
            ];
            Mail::to('support@sabifix.biz')->queue(new SystemMailNotification($item));

            return response()->json(['message' => 'Success!!'], 200);
        } catch (\Throwable $th) {
            // throw $th;
        }
    }
}