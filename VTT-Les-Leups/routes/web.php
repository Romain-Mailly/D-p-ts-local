<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;

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

Route::get('/', [PostController::class, 'index'])->name('index');
Route::get('/partenaires', [PostController::class, 'partenaires'])->name('partenaires');
Route::get('/inscription', [PostController::class, 'inscription'])->name('inscription');
Route::get('connexion', [PostController::class, 'connexion'])->name('connexion');
Route::get('/shop', [PostController::class, 'shop'])->name('shop');
Route::get('commande', [PostController::class, 'commande'])->name('commande');
Route::get('activités', [PostController::class, 'activités'])->name('activités');
Route::get('/profil', [PostController::class, 'profil'])->name('profil');
Route::get('profil/{id}', [PostController::class, 'profil_id'])->name('profil_id')->whereNumber('id');
Route::get('modif/{id}', [PostController::class, 'modif'])->name('modif')->whereNumber('id');
Route::get('/admin', [PostController::class, 'admin'])->name('admin');
Route::get('/delete/{id}', [PostController::class, 'delete'])->name('delete')->whereNumber('id');
Route::get('/reglement_du_raid', [PostController::class, 'reglement'])->name('reglement_du_raid');
Route::get('/raid_des_salamandres', [PostController::class, 'raid'])->name('raid_des_salamandres');
Route::get('/randonnée_des_leups', [PostController::class, 'randonnée'])->name('randonnée_des_leups');
Route::get('/compétitions', [PostController::class, 'compétitions'])->name('compétitions');
Route::get('/goban_ruelles', [PostController::class, 'goban'])->name('goban_ruelle');
Route::get('/marché_de_noel', [PostController::class, 'marché_de_noel'])->name('marché_de_noel');
Route::get('/sorties', [PostController::class, 'sorties'])->name('sorties');
Route::get('/présentation', [PostController::class, 'présentation'])->name('présentation');
Route::get('/presse', [PostController::class, 'presse'])->name('presse');
Route::get('/contact', [PostController::class, 'contact'])->name('contact');
Route::post('/delete/{id}', [PostController::class, 'profilDelete'])->name('profil.delete')->whereNumber('id');
Route::post('/inscription', [PostController::class, 'validation_inscription']);
Route::post('/modif/{id}', [PostController::class, 'validation_modif'])->name('valid.modif')->whereNumber('id');




Route::get('/dashboard', function () {return view('dashboard');})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';
