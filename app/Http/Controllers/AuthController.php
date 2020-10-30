<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;

class AuthController extends Controller
{
    public function login()
    {
        return view('auths.login');
    }

    public function register()
    {
        return view('auths.register');
    }

    public function postlogin(Request $request)
    {
        if(Auth::attempt($request->only('email', 'password')))
        {
            return redirect('/dashboard');
        }

        return redirect('/login');
    }

    public function logout()
    {
        Auth::logout();
        return redirect('/login');
    }


    public function postregister(Request $request)
    {
        $user = new \App\User;
        $user->role = 'siswa';
        $user->name = $request->nama_depan;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->remember_token = str_random(60);
        $user->save();

        $request->request->add(['user_id' => $user->id]);
        $siswa = \App\Siswa::create($request->all());

        return redirect('/dashboard')->with('sukses', 'Data pendaftaran berhasil dikirim');
    }
}
