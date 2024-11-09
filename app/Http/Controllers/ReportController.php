<?php

namespace App\Http\Controllers;

use App\Models\EmailTemplate;
use App\Models\Report;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreReportRequest;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\UpdateReportRequest;
use App\Mail\ContactPageMessage;
use Illuminate\Support\Facades\Mail;

class ReportController extends Controller
{

    public function create()
    {
        $validator = Validator::make(request()->all(), [
            'listing_id' => 'required',
            'report' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 422);
        }
        $req = request()->all();
        $req['reporter_id'] = auth()->user()->id;
        $report = Report::create($req);
        $listingName=$report?->user?->name;
        $subject = "Reporting a user";
        $message = request()->report."<br/> <b>Listing:</b> $listingName";
        $message = str_replace('[[visitor_name]]', request()->name, $message);
        $message = str_replace('[[visitor_email]]', request()->email, $message);
        $message = str_replace('[[visitor_phone]]', request()->phone, $message);
        $message = str_replace('[[visitor_message]]', request()->report, $message);
        Mail::to('support@sabifix.biz')->queue(new ContactPageMessage($subject, $message));
        return response()->json(['message' => 'Success!!'], 200);
    }
}
