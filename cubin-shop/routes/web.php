<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;



Route::get('/', [PostController::class, 'index'])->name('index');
Route::get('/products', [PostController::class, 'getpros'])->name('getpros');
Route::get('/products/{id}', [PostController::class, 'getid'])->name('getid')->whereNumber('id');
Route::get('/contact', [PostController::class, 'contact'])->name('contact');
Route::get('/modif/{id}', [PostController::class, 'modif'])->name('modif')->whereNumber('id');
Route::get('/delete/{id}', [PostController::class, 'delete'])->name('delete')->whereNumber('id');
