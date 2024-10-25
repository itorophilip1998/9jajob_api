<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Services\Notify;
use App\Models\Notification;
use App\Models\Transactions;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\StoreTransactionsRequest;
use App\Http\Requests\UpdateTransactionsRequest;
use App\Mail\SystemMailNotification;

class TransactionsController extends Controller
{

    public function initiateTransaction()
    {
        $validator = Validator::make(request()->all(), [
            'type' => 'required',
            'status' => 'required',
            'ref_number' => 'required',
            'trans_id' => 'required',
            'amount' => 'required',
            'description' => 'nullable',
            'purpose' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 422);
        }
        $req = request()->all();
        $req['user_id'] = auth()->user()->id;
        $transaction =  Transactions::create($req);


        $notification =
            [
                'message' =>  "You just initiated a transaction for " . $transaction["purpose"],
                'user_id' => auth()->user()->id,
                'title' => 'Transaction'
            ];

        (new Notify)->trigger($notification);

        try {

            $item = [
                "user" => auth()->user()->name,
                'view'=>'mail.fundingInvoice',
            'subject'=>'Funds Successfully Added to Your 9jajob Wallet',
            'amount'=>request()->amount
            ];
            if(request()->purpose==='top-up')
            Mail::to(auth()->user()->email)->queue(new SystemMailNotification($item));
        } catch (\Throwable $th) {
            //throw $th;
        }
        return response()->json(['message' => 'Success!!'], 200);
    }

    public function getAll()
    {
        $purpose = request()->input('purpose');
        $user_id = auth()->user()->id;
        $credit =   Transactions::where(['type' => 'credit', 'user_id' => $user_id])->sum('amount');
        $debit =   Transactions::where(['type' => 'debit', 'user_id' => $user_id])->sum('amount');
        $balance = $credit - $debit;
        $totalBalance = Transactions::where(['user_id' => $user_id])->sum('amount');
        $query = Transactions::query()->where('user_id', auth()->user()->id);
        if ($purpose !== null) {
            $query->where('purpose', $purpose);
        }
        $transactions = $query->latest()->get();
        return response()->json(
            [
                'balance' => $balance,
                'totalBalance' => intVal($totalBalance),
                'debitBalance' => intVal($debit),
                'transactions' => $transactions
            ],
            200
        );
    }
}
