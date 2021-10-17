<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ListeController;
use App\Http\Controllers\ConnexionController;
use App\Http\Controllers\DashboardController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [DashboardController::class, 'home'])->name('home');
Route::get('/dashboard', [DashboardController::class, 'index'])->middleware(['auth'])->name('dashboard');

Route::get('/liste', [ListeController::class, 'index'])->middleware(['auth'])->name('liste');

Route::get('/show/{id}', [ListeController::class, 'show'])->middleware(['auth'])->name('show');

Route::get('/qrcode', function () {
    return view('qrcode');
})->middleware(['auth'])->name('qrcode');

Route::get('/login', [ConnexionController::class, 'index'])->name('login');

Route::post('/login', [ConnexionController::class, 'traitement']);

Route::get('/deconnexion', [ConnexionController::class, 'deconnexion'])
    ->middleware(['auth'])->name('deconnexion');

Route::get('/pdf', [ListeController::class, 'download'])
    ->middleware(['auth'])->name('pdf');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
