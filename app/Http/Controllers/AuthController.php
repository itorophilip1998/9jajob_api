<?php

namespace App\Http\Controllers;



use App\Models\User;
use App\Models\Referral;
use Illuminate\Support\Str;
use App\Models\Transactions;
use App\Models\EmailTemplate;
// use App\Http\Controllers\AuthController;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use App\Mail\RegistrationEmailToCustomer;
use Illuminate\Support\Facades\Validator;

use function PHPUnit\Framework\isEmpty;

class AuthController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth:api', ['except' => ['login']]);
    // }


    public function register()
    {

        $validator = Validator::make(request()->all(), [
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:8',
            're_password' => 'required|same:password',
        ]);

        //Send failed response if request is not valid
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 200);
        }

        $token = hash('sha256', time());
        $data = request()->all();
        $data['password'] = Hash::make(request()->password);
        $data['token'] = $token;
        $data['status'] = 'active';
        User::create($data);


        // Send Email
        // $et_data = EmailTemplate::where('id', 6)->first();
        // $subject = $et_data->et_subject;
        // $message = $et_data->et_content;
        // $verification_link = url('customer/registration/verify/' . $token . '/' . request()->email);
        // $message = str_replace('[[verification_link]]', $verification_link, $message);
        // Mail::to(request()->email)->send(new RegistrationEmailToCustomer($subject, $message));


        $credentials = request(['email', 'password']);
        if (!$token = auth()->attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }
        // create referral and transaction if user include the code
        if (request()->ref_code !== null) {
            $ref = Referral::create([
                'user_id' => auth()->user()->id,
                'referrer_id' => substr($data['ref_code'], 4),
                'ref_code' => $data['ref_code'],
                'amount_earn' => 150,
            ]);
            $ref_number= Str::random(10);
            $transaction = [
                'user_id' => substr($data['ref_code'], 4),
                'type' => 'credit',
                'status' => 'success', //debit, credit
                'ref_number' => $ref_number,
                'trans_id' => $ref_number,
                'amount' => $ref["amount_earn"],
                'description' => "referrals withdrawal from " . auth()->user()->name,
                'purpose' => 'referrals', //verification ,packages, top-up, withdrawal,referrals, boost]
                'referral_code' => $data['ref_code'],
            ];
            Transactions::create($transaction);
        }

        return $this->respondWithToken($token, "Registered Successfully!, Please check your mail for verification");
    }

    public function editUser()
    {

        $validator = Validator::make(request()->all(), [
            'password' => 'nullable|min:8',
            're_password' => 'nullable|same:password',
        ]);

        //Send failed response if request is not valid
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 200);
        }

        $data = request()->all();
        if (request()->password!==null) {
            $data['password'] = Hash::make($data['password']);
        }
        if (request()->name !== null) {
            $data['name'] = $data['name'];
        }
        if (request()->hasFile('photo')) {
            $photo = request()->file('photo')->getClientOriginalName();
            request()->file('photo')->move(public_path('uploads/user_photos'), $photo);
            $data['photo'] = $photo;
        }

        $user = User::find(auth()->user()->id);
        $user->update($data);

        return response()->json(['message' => 'Successfully edited User'], 200);
    }


    public function login()
    {

        $credentials = request(['email', 'password']);

        if (!$token = auth()->attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        return $this->respondWithToken($token, "Login Successfully!");
    }

    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function authUser()
    {
        return response()->json(auth()->user());
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        auth()->logout();

        return response()->json(['message' => 'Successfully logged out']);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        try {
            //code...
            return $this->respondWithToken(auth()->refresh(), 'Refresh Token Added');
        } catch (\Throwable $th) {
            //throw $th;
            return response()->json(['error' => 'Unauthorized'], 401);
        }
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token, $message)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60,
            "message" => $message
        ], 200);
    }
}
