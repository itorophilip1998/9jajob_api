<?php

namespace App\Http\Controllers;

use App\Models\Spam;
use App\Models\User;
use App\Models\Chats;
use App\Models\Notification;
use App\Http\services\Upload;
use App\Http\Requests\StoreChatsRequest;
use App\Http\Requests\UpdateChatsRequest;
use App\Models\friends;
use Illuminate\Support\Facades\Validator;

class ChatsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index($friend_id)
    {
        $user_id = auth()->user()->id;
        $chats = Chats::where(function ($query) use ($user_id, $friend_id) {
            $query->where('user_id', $user_id)
                ->where('friend_id', $friend_id);
        })->orWhere(function ($query) use ($user_id, $friend_id) {
            $query->where('user_id', $friend_id)
                ->where('friend_id', $user_id);
        })->get()
            ->map(function ($item) use ($friend_id) {
                $spam = Spam::where(['user_id' => auth()->user()->id, 'friend_id' => $friend_id])->without('friend')->first();
                $item['spam'] = ($spam) ? $spam->status : null;
                return $item;
            });
        return response()->json(['chats' => $chats], 200);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $validator = Validator::make(request()->all(), [
            'friend_id' => 'required',
            'message' => 'required',
            'photo' => 'nullable|array',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 422);
        }


        $req = request()->all();
        $req['user_id'] = request()->user_id ?? auth()->user()->id;
        $photos = [];
        if (is_array(request()->photo) || is_object(
            request()->photo
        )) {
            foreach (request()->photo as $item) {
                $photo =  (new Upload)->image($item, 'uploads/chats/');
                $photos[] = $photo;
            }
        }

        $req['photo'] = json_encode($photos);
        $chats = Chats::create($req);
        $friends = [
            'user_id' => $chats->user_id,
            'friend_id' => $chats->friend_id,
            'chat_id' => $chats->id
        ];
        friends::updateOrCreate([
            'user_id' => $chats->user_id,
            'friend_id' => $chats->friend_id,
        ], $friends);


        $user = [
            'user_id' => $chats->friend_id,
            'friend_id' => $chats->user_id,
            'chat_id' => $chats->id
        ];
        friends::updateOrCreate([
            'user_id' => $chats->friend_id,
            'friend_id' => $chats->user_id,
        ], $user);
        return response()->json(['message' => "Successfully initiated Chat!!", 'chats' => $chats], 200);
    }

    public function userChats()
    {
        $friends = friends::where('user_id', auth()->user()->id)->latest()->get();
        return response()->json(['chatted_users' => $friends], 200);
    }

    public function updateStatus()
    {
        Chats::where(['friend_id' => request()->friend_id, 'user_id' => auth()->user()->id])
            ->update(['status' => 'read']);
        friends::where(['friend_id' => request()->friend_id, 'user_id' => auth()->user()->id])
            ->update(['status' => 'read']);
        if (request()->unread_all == true) {
            friends::where(['user_id' => auth()->user()->id])
                ->update(['status' => 'read']);
        }
        return response()->json(['message' => 'Updated Successfully'], 200);
    }

    public function allUsers()
    {
        $users = User::all();
        return response()->json(['counts' => count($users), 'users' => $users], 200);
    }
}