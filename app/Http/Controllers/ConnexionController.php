<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class ConnexionController extends Controller
{
    public function index(){
        return view('login');
    }

    public function traitement(Request $request){

        $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required'],
        ]);

        $resultat = Auth::attempt([
            'email' => $request->email, 
            'password' => $request->password
        ]);
        
        if($resultat){
            return redirect()->route('dashboard');
        }
        
        return back()->withInput()->withErrors([
            'email' => 'Vos identifiants sont incorrects.',
        ]);
        
    }

    public function deconnexion(){
        Session::flush();

        auth()->logout();

        return redirect()->route('login');
    }
}
