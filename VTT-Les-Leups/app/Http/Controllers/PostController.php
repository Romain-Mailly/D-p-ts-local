<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class PostController extends Controller
{
    public function index(){
        return view('index');
    }

    public function partenaires(){
        return view('partenaires');
    }

    public function inscription(){
        return view('inscription');
    }

    public function connexion(){
        return view('connexion');
    }


    public function validation_inscription(Request $request){

        $validation = $request->validate([
            'nom' => ['required'],
            'prenom' => ['required'],
            'ddn' => ['required'],
            'licence' => ['required'],
            'id' => ['required'],
            'mdp' => ['required'],
            'mdp2' => ['required', 'same:mdp']
        ]);

        DB::table('utilisateurs')->insert([
            'util_nom' => $request->nom,
            'util_prenom'  => $request->prenom,
            'util_ddn' => $request->ddn,
            'util_licence' => $request->licence,
            'util_identifiant' => $request->id,
            'util_mdp' => Hash::make($request->mdp),
            'created_at' => now()
        ]);

        return redirect('/');

    }
}
