<?php
namespace App\Http\Controllers\API;
 
use App\Http\Controllers\Controller;
use App\Models\Package;
use App\Models\PackagePurchase;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;
use DB;
use Auth;

class PackageController extends Controller
{

    public function index()
    {
        $package = Package::orderBy('id')->get();
        return response()->json(['package' => $package], 200);
    }
}
