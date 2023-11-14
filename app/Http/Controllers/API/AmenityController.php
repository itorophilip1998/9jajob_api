<?php
namespace App\Http\Controllers\API;
 
use App\Http\Controllers\Controller;
use App\Models\Amenity; 

class AmenityController extends Controller
{
 
    public function index()
    {
        $amenity = Amenity::all();
        return response()->json($amenity, 200);
    }
}
