<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Voyageur extends Model
{
    use HasFactory;

    protected $table = 'voyageurs';
    
    protected $fillable = [
        'id',
        'nomcomplet',
        'age',
        'nationalite',
        'venant',
        'sexe',
        'allant',
        'itineraire',
        'addresse_etranger',
        'numero_telephone',
        'date_arrive',
        'contact_num',
        'addresse_pays',
        'motif',
        'autre_motif',
        'voyage_mois',
        'pays_dernier',
        'vaccin',
        'pcr',
    ];
}
