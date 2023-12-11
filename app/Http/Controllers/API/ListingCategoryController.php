<?php
namespace App\Http\Controllers\API;
use App\Models\Listing;
use Illuminate\Http\Request;
use App\Models\ListingCategory;
use Illuminate\Support\Facades\URL;
use App\Http\Controllers\Controller;


class ListingCategoryController extends Controller
{

    public function index() {
        $url = URL::to("/uploads/listing_category_photos");
        $listingCategories = ListingCategory::latest()->get();
        $listingCategories->each(function ($category) use ($url) {
            $category->listing_category_photo = "$url/$category->listing_category_photo";
        });

        return response()->json($listingCategories, 200);

    }





}
 