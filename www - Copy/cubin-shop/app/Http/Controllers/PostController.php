<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(){
        return view('index');
    }

    public function products(){
        return view('products');
    }
    
    public function contact(){
        return view('contact');
    }

}
