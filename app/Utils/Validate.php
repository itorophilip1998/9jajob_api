<?php

namespace App\Utils;

use Illuminate\Support\Facades\Validator;

class Validate
{

    public function validate($data)
    {
        $validator = Validator::make(request()->all(), $data);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 422);
        }
        return $validator;
    }
}
