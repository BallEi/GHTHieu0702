<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function loginAdmin()
    {
        if (auth()->check()) {
            return  view('admin.home');
        }
        return view('admin.login');
    }


    public function postLoginAdmin(Request $request)
    {
        $remember = $request->has('remember_me') ? true : false;
        $certifications = $request->only(['email', 'password']);

        if (Auth::attempt($certifications)) {
                return view('admin.home');
//            return redirect()->to('home');
        }
        return view('admin.login');



//        if (auth()->attempt([
//            'email' => $request->email,
//            'password' => $request->password
//        ], $remember)) {
//            return redirect()->to('home');
//        }

    }
    public function logout()
    {
        auth()->logout();
        return redirect()->route('admin.login');
    }

}
