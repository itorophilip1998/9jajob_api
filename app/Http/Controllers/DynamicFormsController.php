<?php

namespace App\Http\Controllers;

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
}
