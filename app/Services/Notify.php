<?php

namespace App\Services;

use App\Models\Notification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class Notify
{
    public function trigger($data)
    {

        Notification::create(
            [
                'message' => $data['message'],
                'user_id' => $data['user_id'] ?? 0,
                'title' => $data['title'],
                'booking_id' => $data['booking_id'] ?? 0
            ]
        );

        $expoURL = 'https://exp.host/--/api/v2/push/send';

        return Http::post($expoURL, [
            'to' => auth()->user()->expo_token,
            'title' => $data["title"],
            'body' => $data["message"],
        ]);
    }

    public function chatTrigger($data)
    {
        $expoURL = 'https://exp.host/--/api/v2/push/send';

        return Http::post($expoURL, [
            'to' => auth()->user()->expo_token,
            'title' => $data['title'],
            'body' => $data['body'],
        ]);
    }
}