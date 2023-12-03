<?php

namespace App\Http\Controllers;

use App\Models\Report;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreReportRequest;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\UpdateReportRequest;

class ReportController extends Controller
{

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $validator = Validator::make(request()->all(), [
            'listing_id' => 'required',
            'report' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 200);
        }
        $req = request()->all();
        $req['reporter_id'] = auth()->user()->id;
        Report::create($req);
        return response()->json(['message' => 'Success!!'], 200);

    }

}
