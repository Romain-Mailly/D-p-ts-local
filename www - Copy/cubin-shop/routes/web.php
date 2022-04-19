<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;



Route::get('/', [PostController::class, 'index'])->name('index');
Route::get('/products', [PostController::class, 'products'])->name('products');
Route::get('/contact', [PostController::class, 'contact'])->name('contact');
