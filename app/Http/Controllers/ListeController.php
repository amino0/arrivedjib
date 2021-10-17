<?php

namespace App\Http\Controllers;

use PDF;
use Carbon\Carbon;
use App\Models\Voyageur;
use Illuminate\Http\Request;

class ListeController extends Controller
{
    public function index()
    {
        $lists = Voyageur::all();

        return view('liste', compact('lists'));
    }

    public function show($id)
    {
        $person = Voyageur::find($id);

        return view('show', compact('person'));
    }

    public function download()
    {
        $lists = Voyageur::all();
        $mytime = Carbon::now()->format('d/m/Y H:i:s');
        
        // return view('pdf', compact('lists', 'mytime'));
        $pdf = PDF::loadView('pdf', compact('lists', 'mytime'))->setPaper("a4", "landscape" );
        return $pdf->download('liste.pdf');
    }
}
