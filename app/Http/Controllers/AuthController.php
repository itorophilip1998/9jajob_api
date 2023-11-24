<?php
namespace App\Http\Controllers;



use App\Models\User;
use App\Models\EmailTemplate;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use App\Http\Controllers\AuthController;
use App\Mail\RegistrationEmailToCustomer;
use Illuminate\Support\Facades\Validator;

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
            'password' => 'required',
            're_password' => 'required|same:password',
        ]);

    //Send failed response if request is not valid
    if ($validator->fails()) {
        return response()->json(['error' => $validator->messages()], 200);
    }

    $token = hash('sha256',time());
    $data=request()->all();
    $data['password'] = Hash::make(request()->password);
    $data['token'] = $token;
    $data['status'] = 'active';
    User::create($data);


    // Send Email
    // $et_data = EmailTemplate::where('id', 6)->first();
    // $subject = $et_data->et_subject;
    // $message = $et_data->et_content;
    // $verification_link = url('customer/registration/verify/'.$token.'/'.request()->email);
    // $message = str_replace('[[verification_link]]', $verification_link, $message);
    // Mail::to(request()->email)->send(new RegistrationEmailToCustomer($subject,$message));


        $credentials = request(['email', 'password']);
        if (! $token = auth()->attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        return $this->respondWithToken($token,"Registered Successfully!, Please check your mail for verification");
    }

    public function login()
    {

        $credentials = request(['email', 'password']);

        if (! $token = auth()->attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        return $this->respondWithToken($token,"Login Successfully!");
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
        return $this->respondWithToken(auth()->refresh());
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token,$message)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60,
            "message"=>$message
        ]);
    }
}
