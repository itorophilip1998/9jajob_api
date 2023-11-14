<?php
namespace App\Http\Controllers\API;
use App\Http\Controllers\Controller;
use App\Mail\ResetPasswordMessageToAdmin;
use App\Models\Admin;
use App\Models\EmailTemplate;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Hash;
use Auth;
use Illuminate\Support\Facades\Mail;

class LoginController extends Controller
{
 

    public function login_check(Request $request) {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ],[
            'email.required' => ERR_EMAIL_REQUIRED,
            'email.email' => ERR_EMAIL_INVALID,
            'password.required' => ERR_PASSWORD_REQUIRED
        ]);

        $credential = [
            'email'=> $request->email,
            'password'=> $request->password
        ];

        if(Auth::guard('admin')->attempt($credential)) {
            return redirect()->route('admin_dashboard');
        } else {
            return redirect()->back()->with('error', ERR_ADMIN_NOT_FOUND);
        }
    }

    public function logout(Request $request) {
        Auth::guard('admin')->logout();
        return redirect()->route('admin_login');
    }

    

   
}
