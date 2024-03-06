<?php

namespace App\Http\Controllers;

use App\Models\Chats;
use App\Models\friends;
use App\Models\Notification;
use App\Http\Requests\StoreNotificationRequest;
use App\Http\Requests\UpdateNotificationRequest;

class NotificationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $notification = Notification::where(['user_id' => auth()->user()->id])->latest()->get();
        return response()->json(['counts' => count($notification), 'notifications' => $notification], 200);
    }

    public function readNotifications()
    {
        Notification::where(['user_id' => auth()->user()->id])
            ->update(['status' => 'read']);
        return response()->json(['message' => 'All Notification Read!!'], 200);
    }



    public function counts()
    {
        $notification = Notification::where(['user_id' => auth()->user()->id])->get();
        $messages = friends::where(['user_id' => auth()->user()->id, 'status' => 'unread'])
            ->count();
        return response()->json(['notifications' =>  $notification, 'messages' =>  $messages], 200);
    }
}
