<?php
namespace App\Http\Controllers\API;
 
use App\Http\Controllers\Controller;
use App\Models\Category; 

class CategoryController extends Controller
{
   

    public function index()
    {
        $category = Category::all();
        return response()->json($category, 200);

    }
 

}
