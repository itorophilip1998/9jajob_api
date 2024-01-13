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
    public function index()
    {
        $g_setting = GeneralSetting::where('id', 1)->first();
        $contact_data = PageContactItem::where('id', 1)->first();
        return view('front.contact', compact('contact_data', 'g_setting'));
    }

    public function send_email(Request $request)
    {



        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'message' => 'required'
        ]);


        // Send Email
        $email_template_data = EmailTemplate::where('id', 1)->first();
        $subject = $email_template_data->et_subject;
        $message = $email_template_data->et_content;

        $message = str_replace('[[visitor_name]]', $request->name, $message);
        $message = str_replace('[[visitor_email]]', $request->email, $message);
        $message = str_replace('[[visitor_phone]]', $request->phone, $message);
        $message = str_replace('[[visitor_message]]', $request->message, $message);

        $admin_data = Admin::where('id', 1)->first();

        Mail::to($admin_data->email)->send(new ContactPageMessage($subject, $message));

        // return redirect()->back()->with('success', SUCCESS_CONTACT_MESSAGE);
    }
}
