<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(){
        return view('index');
    }

    public function activites(){
        return view('activites');
    }

    public function inscription(){
        return view('inscription');
    }
}
