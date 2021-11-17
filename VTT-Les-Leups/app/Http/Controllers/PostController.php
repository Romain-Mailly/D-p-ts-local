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
            'adhesion' => ['required'],
            'licence' => ['required'],
            'adresse' => ['required'],
            'ville' => ['required'],
            'cp' => ['required', 'min:5', 'max:5'],
            'tel1' => ['required'],
            'email1' => ['required'],
            'id' => ['required'],
            'mdp' => ['required', 'min:7'],
            'mdp2' => ['required', 'same:mdp']
        ]);

        DB::table('utilisateurs')->insert([
            'util_nom' => $request->nom,
            'util_prenom'  => $request->prenom,
            'util_ddn' => $request->ddn,
            'util_adhesion' => $request->adhesion,
            'util_licence' => $request->licence,
            'util_adresse' => $request->adresse,
            'util_ville' => $request->ville,
            'util_cp' => $request->cp,
            'util_tel1' => $request->tel1,
            'util_tel2' => $request->tel2,
            'util_email1' => $request->email1,
            'util_email2' => $request->email2,
            'util_identifiant' => $request->id,
            'util_mdp' => Hash::make($request->mdp),
            'created_at' => now()
        ]);

        return redirect('/');

    }
}
