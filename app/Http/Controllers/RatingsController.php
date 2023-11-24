<?php

namespace App\Http\Controllers;

use App\Models\Ratings;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\StoreRatingsRequest;
use App\Http\Requests\UpdateRatingsRequest;

class RatingsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index($user_id)
    {
        $category = Ratings::where("user_id", $user_id)->get();
        return response()->json($category, 200);

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $validator = Validator::make(request()->all(), [
            'description' => 'nullable',
            'rate' => 'required',
            'user_id' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 200);
        }
        $req= request()->all();
        $req['rator_id']=auth()->user()->id;
        $res = Ratings::create($req);
        return response()->json($res, 200);
    }


}
