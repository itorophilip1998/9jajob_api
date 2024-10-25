<?php
namespace App\Http\Controllers\API;
use App\Models\Listing;
use Illuminate\Http\Request;
use App\Models\ListingCategory;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\URL;
use App\Http\Controllers\Controller;


class ListingCategoryController extends Controller
{

    public function index() {
        $url = URL::to("/uploads/listing_category_photos");
        // $listingCategories = ListingCategory::orderBy('listing_category_name')->get();
        // $listingCategories->each(function ($category) use ($url) {
        //     $category->listing_category_photo = "$url/$category->listing_category_photo";
        // });
        $listingCategories = ListingCategory::
        leftJoin(DB::raw('(SELECT listing_category_id, COUNT(*) as total
                            FROM listings
                            JOIN listing_categories ON listings.listing_category_id = listing_categories.id
                            GROUP BY listing_category_id
                            ORDER BY total DESC) as r2'), 'listing_categories.id', '=', 'r2.listing_category_id')
        ->orderByDesc('r2.total')
        ->orderByDesc('listing_categories.id')
        ->get();


                           $listingCategories->each(function ($category) use ($url) {
            $category->listing_category_photo = "$url/$category->listing_category_photo";
        });

        return response()->json($listingCategories, 200);

    }





}
