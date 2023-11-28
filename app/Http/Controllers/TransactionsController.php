<?php

namespace App\Http\Controllers;

use App\Models\Transactions;
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
            return response()->json(['error' => $validator->messages()], 200);
        }
        $req = request()->all();
        $req['user_id'] = auth()->user()->id;
        Transactions::create($req);
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
        $transactions = $query->get();
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
