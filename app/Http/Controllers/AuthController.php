<?php

namespace App\Http\Controllers;



use Carbon\Carbon;
use App\Models\User;
use App\Models\Referral;
use Illuminate\Support\Str;
use App\Models\Notification;
// use App\Http\Controllers\AuthController;
use App\Models\Transactions;
use App\Http\services\Upload;
use App\Models\EmailTemplate;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

use Illuminate\Support\Facades\Mail;
use function PHPUnit\Framework\isEmpty;
use Illuminate\Support\Facades\Storage;
use App\Mail\RegistrationEmailToCustomer;
use Illuminate\Support\Facades\Validator;
use App\Mail\ResetPasswordMessageToCustomer;

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
            return response()->json(['error' => $validator->messages()], 422);
        }

        $token = hash('sha256', time());
        $data = request()->all();
        $data['password'] = Hash::make(request()->password);
        $data['token'] = $token;
        $data['status'] = 'active';
        User::create($data);


        // Send Email
        $et_data = EmailTemplate::where('id', 6)->first();
        $subject = $et_data->et_subject;
        $message = $et_data->et_content;
        $verification_link = url('customer/registration/verify/' . $token . '/' . request()->email);
        $message = str_replace('[[verification_link]]', $verification_link, $message);
        try {
            Mail::to(request()->email)->send(new RegistrationEmailToCustomer($subject, $message));
        } catch (\Throwable $th) {
            //throw $th;
        }

        $credentials = request(['email', 'password']);
        if (!$token = auth()->attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], 401);
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
            return response()->json(['error' => $validator->messages()], 422);
        }

        $data = request()->all();
        if (request()->password !== null) {
            $data['password'] = Hash::make($data['password']);
        }
        if (request()->name !== null) {
            $data['name'] = $data['name'];
        }
        if (request()->hasFile('photo')) {
            $item = request()->file('photo');
            $photo =  (new Upload)->image($item, 'uploads/user_photos/');
            $data['photo'] = $photo;
        }

        $user = User::find(auth()->user()->id);
        $user->update($data);

        return response()->json(['message' => 'Successfully edited User'], 200);
    }


    public function login()
    {
        $user = User::where('email', request()->email)->first();
        // return $user?->status;
        if ($user?->status !== 'active') {
            return response()->json(['error' => 'Your Account is activated'], 422);
        }
        $credentials = request(['email', 'password']);

        if (!$token = auth()->attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        return $this->respondWithToken($token, "Login Successfully!");
    }
    public function statusCheck()
    {
        $status = request()->status;
        $user = User::find(request()->user_id);

        $user->update(['status' => request()->status]);
        return response()->json(["message" => "User is $status!"]);
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
            $user = User::find(auth()->user()->id);
            if ($user && $user->expo_token === request()->expo_token) {
                $user->update(['expo_token' => request()->expo_token]);
            }

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


    public function forgotPassword()
    {


        $validator = Validator::make(request()->all(), [
            'email' => 'required|email'

        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 422);
        }
        $check_email = User::where('email', request()->email)->where('status', 'Active')->first();

        if (!$check_email) {
            return response()->json(['error' => 'Email Not Found !'], 422);
        } else {
            $et_data = EmailTemplate::where('id', 7)->first();
            $subject = $et_data->et_subject;
            $message = 'Hello ' . $check_email->name . ", \n to reset your password copy the OTP bellow:";
            $token = rand(10000, 99999);
            // $reset_link = url('customer/reset-password/' . $token . '/' . request()->email);

            $data['token'] = $token;
            User::where('email', request()->email)->update($data);
            try {

                Mail::to(request()->email)->send(new ResetPasswordMessageToCustomer($subject, $message, $token));
            } catch (\Throwable $th) {
                //throw $th;
            }
        }

        $email = request()->email;

        return response()->json(['message' => "Successfully sent mail to $email !! "], 200);
    }


    public function resetPassword()
    {

        $validator = Validator::make(request()->all(), [
            'email' => 'required|email',
            'otp' => 'required',
            'password' => 'required|min:8',
            're_password' => 'required|same:password',
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 422);
        }
        $user = User::where(['email' => request()->email, 'token' => request()->otp])->first();
        if (!$user)
            return response()->json(['error' => "Invalid Credentials!! "], 422);
        $data['password'] = Hash::make(request()->password);
        $data['token'] = '';
        $user->update($data);
        return response()->json(['message' => "Successfully updated password!! "], 200);
    }
}