<?php

namespace App\Http\Controllers;

use App\Models\Voyageur;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function home()
    {
        return redirect()->route('dashboard');
    }
    public function index()
    {
        $lists = Voyageur::take(10)->get();

        $count = Voyageur::count();

        $pcr = Voyageur::where('pcr', '=', 'non')->count();

        $vaccin = Voyageur::where('vaccin', '=', 'oui')->count();

        $risque = Voyageur::where('venant', '=', 'Afghanistan')
            ->orWhere('venant', '=', 'Brésil')
            ->orWhere('venant', '=', 'Costa Rica')
            ->orWhere('venant', '=', 'Cuba')
            ->orWhere('venant', '=', 'Géorgie')
            ->orWhere('venant', '=', 'Iran')
            ->orWhere('venant', '=', 'Maldives')
            ->orWhere('venant', '=', 'Pakistan')
            ->orWhere('venant', '=', 'Russie')
            ->orWhere('venant', '=', 'Seychelles')
            ->orWhere('venant', '=', 'Suriname')
            ->orWhere('pcr', '=', 'oui')
            ->orWhere('venant', '=', 'Turquie')->count();

        return view('dashboard', compact('lists', 'count', 'pcr', 'vaccin', 'risque'));
    }
}
