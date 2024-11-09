<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Mail\ContactPageMessage;
use App\Mail\SystemMailNotification;
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

            try {
                $item = [
                    'view' => 'mail.contactMail',
                    'subject' => "Contact Us ",
                    'mailMessage' =>  request()->message,
                    'userInfo' => "Mail From: " . request()->name ?? request()->email
                ];
                Mail::to('support@sabifix.biz')->queue(new SystemMailNotification($item));
            } catch (\Throwable $th) {
                //throw $th;
            }
            return response()->json(['message' => 'success']);
        } catch (\Throwable $th) {
            // throw $th;
            // return response()->json(['message' => 'success']);
        }
    }
}