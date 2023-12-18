<?php

namespace App\Http\Controllers\API;

use Auth;
use Carbon\Carbon;
use App\Models\Package;

use App\Utils\Validate;
use Illuminate\Support\Str;
use App\Models\Notification;
use App\Models\Transactions;
use Illuminate\Http\Request;
use App\Models\PackagePurchase;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;

class PackageController extends Controller
{

    public function index()
    {
        $package = Package::orderBy('id')->get();
        return response()->json(['package' => $package], 200);
    }
    public function updatePackage()
    {
        $validate = [
            'package_type' => 'required',
            'package_name' => 'required',
            'package_price' => 'required',
            'valid_days' => 'required',
            'total_listings' => 'required',
            'total_amenities' => 'required',
            'total_photos' => 'required',
            'total_videos' => 'required',
            'total_social_items' => 'required',
            'total_additional_features' => 'required',
            'allow_featured' => 'required',
            'package_order' => 'required'
        ];
        (new Validate)->validate($validate);
        $req = request()->all();
        Package::updateOrCreate(['id' => $req['id']], $req)->update($req);
        return response()->json(['message' => 'Package Saved Successfully!'], 200);
    }

    public function purchase()
    {
        try {
            $validate = [
                "package_id" => 'required',
                "package_start_date" => 'required',
                "package_end_date" => 'required',
            ];
            (new Validate)->validate($validate);
            $req = request()->all();
            $package = Package::find($req["package_id"]);
            $req["transaction_id"] = Str::random(10);
            $req["user_id"] = auth()->user()->id;
            $req["paid_amount"] = $package->package_price;
            $req["payment_method"] = "wallet";
            $req["currently_active"] = 1;
            $req["payment_status"] = "success";
            $package = PackagePurchase::create($req);
            $transaction = [
                'user_id' => auth()->user()->id,
                'type' => 'debit',
                'status' => 'success', //debit, credit
                'ref_number' => $req["transaction_id"],
                'trans_id' => $req["transaction_id"],
                'amount' => $req["paid_amount"],
                'description' => "Package from " . auth()->user()->name,
                'purpose' => 'packages', //verification ,packages, top-up, withdrawal,referrals, boost]
                'package_id' => $req["package_id"],
            ];
            Transactions::create($transaction);
            $item = [
                "invoiceNumber" => rand(1111, 9999),
                "invoiceDate" => Carbon::now()->format("d M, Y"),
                "user" => auth()->user()->name,
                "purpose" => $transaction["purpose"],
                "status" => $transaction["status"],
                "ref_number" => $transaction["ref_number"],
                "amount" => $transaction["amount"],
            ];

            Notification::create(
                [
                    'message' =>
                    $transaction['description'],
                    'user_id' => auth()->user()->id
                ]
            );
            try {
                Mail::send('mail.invioce',  ['item' => $item], function ($message) {
                    $message->to(auth()->user()->email);
                    $message->subject('Invioce');
                });
            } catch (\Throwable $th) {
                //throw $th;
            }
            return response()->json(['message' => 'PLease check your mail for Invoice ' . auth()->user()->email], 200);
        } catch (\Throwable $th) {
            //throw $th;
        }
    }
}