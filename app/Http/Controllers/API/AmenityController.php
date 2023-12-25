<?php
namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Amenity;

class AmenityController extends Controller
{

    public function index()
    {
        $amenity = Amenity::orderBy('amenity_name')->get();
        return response()->json($amenity, 200);
    }
}
