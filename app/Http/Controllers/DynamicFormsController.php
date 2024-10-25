<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class DynamicFormsController extends Controller
{
    public function index()
    {

        $dynamic_forms = DB::table('extra_details')->first();
        return response()->json(['dynamic_forms' => $dynamic_forms], 200);
    }
    public function UpdateToken()
    {

        // Get the authenticated user
        $user = User::find(auth()->user()->id);

        // Update the user's Expo token
        $user->update([
            'expo_token' => request()->expo_token
        ]);

        return response()->json(['message' => "Expo Token Updated"], 200);
    }
}