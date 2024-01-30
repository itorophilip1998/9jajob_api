<?php

namespace App\Http\Controllers;

use App\Models\Spam;
use App\Models\User;
use App\Models\Chats;
use App\Models\Notification;
use App\Http\services\Upload;
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
        $req['user_id'] = request()->user_id;
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

        return response()->json(['message' => "Successfully initiated Chat!!", 'chats' => $chats], 200);
    }

    public function userChats()
    {
        $authUser = auth()->user();

        // User::where('id', "!=", $authUser->id)->select('id', 'name', 'email', 'phone', 'photo')
        //     ->whereHas('chats', function ($query) use ($authUser) {
        //         $query->where('user_id', $authUser->id)
        //             ->orWhere('friend_id', $authUser->id);
        //     })->withOnly('chats')
        //     ->get()
        //     ->map(function ($item) {
        //         $spam = Spam::where(['user_id' => auth()->user()->id, 'friend_id' => $item->id])->without('friend')->first();
        //         $item['spam'] = ($spam) ? $spam->status : null;
        //         return $item;
        //     });

        $collection = Chats::where('user_id', $authUser->id)
            ->orWhere('friend_id', $authUser->id)
            ->latest()
            ->get();

        // Assuming $chatMessages is an array
        $chatMessages = collect($collection); 

        // Normalize user_id and friend_id pairs
        $normalized = $chatMessages->map(function ($message) {
            return [
                'user_id' => min($message['user_id'], $message['friend_id']),
                'friend_id' => max($message['user_id'], $message['friend_id']),
                'message' => $message['message'],
                // Add other fields as needed
            ];
        });

        // Group the collection by normalized user_id and friend_id pairs
        $grouped = $normalized->groupBy(function ($item) {
                return $item['user_id'] . '-' . $item['friend_id'];
            });

        // Get the latest message from each group along with the original chat messages
        $latestMessages = $grouped->map(function ($group) use ($chatMessages) {
            $latest = $group->sortByDesc('created_at')->first();

            // Find the corresponding original chat message
            $originalMessage = $chatMessages->where('user_id', $latest['user_id'])
            ->where('friend_id', $latest['friend_id'])
            ->first();

            // Check if $originalMessage is not null before converting to an array
            $originalMessageArray = $originalMessage ? $originalMessage->toArray() : [];

            // Merge the latest message with the original chat message
            return array_merge($originalMessageArray, $latest);
        })->values();

        // Resulting array of the latest messages with all data and relationships
        $latestMessagesArray = $latestMessages->toArray();



        $latestMessagesArray = $latestMessages->toArray();



        return response()->json(['chatted_users' => $latestMessagesArray], 200);
    }

    public function updateStatus()
    {
        Chats::where(['friend_id' => request()->friend_id, 'user_id' => auth()->user()->id])
            ->update(['status' => 'read']);

        return response()->json(['message' => 'Updated Successfully'], 200);
    }

    public function allUsers()
    {
        $users = User::all();
        return response()->json(['counts' => count($users), 'users' => $users], 200);
    }
}