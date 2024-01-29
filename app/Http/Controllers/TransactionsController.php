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
        // send invioce
        $item = [
            "invoiceNumber" => rand(1111, 9999),
            "invoiceDate" => Carbon::now()->format("d M, Y"),
            "user" => auth()->user()->name,
            "purpose" => $transaction["purpose"],
            "status" => $transaction["status"],
            "ref_number" => $transaction["ref_number"],
            "amount" => $transaction["amount"],
            'description' => "You just initiated a transaction for " . $transaction["purpose"]
        ];

        $notification =
            [
                'message' =>
                $transaction['description'],
                'user_id' => auth()->user()->id,
                'title' => 'Transaction'
            ];

        (new Notify)->trigger($notification);

        try {

            Mail::send('mail.invioce',  ['item' => $item], function ($message) {
                $message->to(auth()->user()->email);
                $message->subject('Invioce');
            });
        } catch (\Throwable $th) {
            //throw $th;
        }
        return response()->json(['message' => 'Success!!'], 200);
    }

    public function getAll()
    {
        $purpose = request()->input('purpose');
        $user_id = auth()->user()->id;
        $credit =   Transactions::where(['type' => 'credit', 'user_id' => $user_id])->get()->sum('amount');
        $debit =   Transactions::where(['type' => 'debit', 'user_id' => $user_id])->get()->sum('amount');
        $balance = $credit - $debit;
        $totalBalance = Transactions::where(['user_id' => $user_id])->get()->sum('amount');
        $query = Transactions::query()->where('user_id', auth()->user()->id);
        if ($purpose !== null) {
            $query->where('purpose', $purpose);
        }
        $transactions = $query->latest()->get();
        return response()->json(
            [
                'balance' => $balance,
                'totalBalance' => $totalBalance,
                'debitBalance' => $debit,
                'transactions' => $transactions
            ],
            200
        );
    }
}
