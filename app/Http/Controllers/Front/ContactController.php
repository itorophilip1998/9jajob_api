<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Mail\ContactPageMessage;
use App\Models\Admin;
use App\Models\EmailTemplate;
use App\Models\GeneralSetting;
use App\Models\PageContactItem;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Mail;

class ContactController extends Controller
{


    public function send_email(Request $request)
    {
        try {
            $request->validate([
                'name' => 'nullable',
                'email' => 'required|email',
                'message' => 'required',
                'phone' => 'nullable',
            ]);


            // Send Email
            $email_template_data = EmailTemplate::where('id', 1)->first();
            $subject = $email_template_data->et_subject;
            $message = $email_template_data->et_content;
            $message = str_replace('[[visitor_name]]', $request->name, $message);
            $message = str_replace('[[visitor_email]]', $request->email, $message);
            $message = str_replace('[[visitor_phone]]', $request->phone, $message);
            $message = str_replace('[[visitor_message]]', $request->message, $message);
            Mail::queue('support@sabifix.biz')->send(new ContactPageMessage($subject, $message));
            return response()->json(['message' => 'success']);
        } catch (\Throwable $th) {
            //throw $th;
            return response()->json(['message' => 'success']);
        }
    }
}