<?php

namespace App\Http\services;

use App\Models\Transactions;


class Balance
{

    public function check($listing_creation_amount)
    {
        $user_id = auth()->user()->id;
        $credit =   Transactions::where(['type' => 'credit', 'user_id' => $user_id])->get()->sum('amount');
        $debit =   Transactions::where(['type' => 'debit', 'user_id' => $user_id])->get()->sum('amount');
        $balance = $credit - $debit;

       
        return $balance;
    }
}