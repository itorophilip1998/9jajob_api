<?php

namespace App\Http\Controllers;

use App\Models\Spam;
use App\Http\Requests\StoreSpamRequest;
use App\Http\Requests\UpdateSpamRequest;
use Illuminate\Support\Facades\Validator;

class SpamController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $spam = Spam::where(['user_id' => auth()->user()->id])->latest()->get();

        return response()->json(['counts' => count($spam), 'spam' => $spam], 200);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $validator = Validator::make(request()->all(), [
            'friend_id' => 'required',
            'status' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 422);
        }

        $req = request()->all();
        $req['user_id'] = auth()->user()->id;
        $spam = Spam::updateOrCreate(['user_id'=> $req['user_id'], 'friend_id' => request()->friend_id], $req);
        return response()->json(['message' => "Successfully " . $spam->status . " a user !!"], 200);
    }
}
