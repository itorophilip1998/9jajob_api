<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Chats;
use App\Http\Requests\StoreChatsRequest;
use App\Http\Requests\UpdateChatsRequest;
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
        })->latest()->get();
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
            'photo' => 'nullable|file',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 422);
        }


        $req = request()->all();
        $req['user_id'] = auth()->user()->id;

        if (request()->hasFile('photo')) {
            $photo = request()->file('photo')->getClientOriginalName();
            request()->file('photo')->move(public_path('uploads/chats'), $photo);
            $req['photo'] = $photo;
        }
        Chats::create($req);
        return response()->json(['message' => "Successfully initiated Chat!!"], 200);
    }

    public function userChats()
    {
        $authUser = auth()->user();
        $chattedUsers = User::whereHas('chats', function ($query) use ($authUser) {
            $query->where('friend_id', $authUser->id);
        })->get();
        return response()->json(['chatted_users' => $chattedUsers], 200);
    }

    public function allUsers()
    {
        $users = User::all();
        return response()->json(['counts' => count($users), 'users' => $users], 200);
    }
}
