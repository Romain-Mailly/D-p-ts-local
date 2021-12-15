<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Redirect;

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
        //     'prenom' => ['required'],
        //     'ddn' => ['required'],
        //     'adhesion' => ['required'],
        //     'licence' => ['required'],
        //     'adresse' => ['required'],
        //     'ville' => ['required'],
             'cp' => ['required', 'min:5', 'max:5']
        //     'tel1' => ['required'],
        //     'email1' => ['required'],
        //     'id' => ['required'],
     ]);

        DB::table('users')->insert([
            'prenom'  => $request->prenom,
            'ddn' => $request->ddn,
            'adhesion' => $request->adhesion,
            'licence' => $request->licence,
            'adresse' => $request->adresse,
            'ville' => $request->ville,
            'cp' => $request->cp,
            'tel1' => $request->tel1,
            'tel2' => $request->tel2,
            'email1' => $request->email1,
            'email2' => $request->email2,
            'identifiant' => $request->id
        ]);

        return redirect('/');

    }

    public function shop(){
        return view('shop');
    }

    public function commande(){
        return view('commande');
    }

    public function profil(){
        return view('profil');
    }

    public function profil_id($id){
        $profil = DB::select("select * from users where id = $id");

        return view('profil', ['profil' => $profil]);

    }

    public function modif($id){
    $profil = DB::select("select * from users where id = $id");

    return view('modif', ['profil' => $profil]);
    }


    public function validation_modif($id, Request $request){

    
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
            // 'mdp' => ['required', 'min:7'],
            // 'mdp2' => ['required', 'same:mdp']
        ]);


        DB::update("update users set name = '$request->nom' where id = $id");
        DB::update("update users set prenom = '$request->prenom' where id = $id");
        DB::update("update users set ddn = '$request->ddn' where id = $id");
        DB::update("update users set adhesion = '$request->adhesion' where id = $id");
        DB::update("update users set licence = '$request->licence' where id = $id");
        DB::update("update users set adresse = '$request->adresse' where id = $id");
        DB::update("update users set ville = '$request->ville' where id = $id");
        DB::update("update users set cp = '$request->cp' where id = $id");
        DB::update("update users set tel1 = '$request->tel1' where id = $id");
        DB::update("update users set tel2 = '$request->tel2' where id = $id");
        DB::update("update users set email1 = '$request->email1' where id = $id");
        DB::update("update users set email2 = '$request->email2' where id = $id");
        DB::update("update users set identifiant = '$request->id' where id = $id");
        // $mdp = Hash::make($request->mdp);
        // DB::update("update utilisateurs set util_mdp = '$mdp' where util_id = $id");


        return redirect('/');

    }

    public function admin(){

        if (!Gate::allows('access-admin')){
            abort('403');
        }

        $adherants = DB::select('select * from users');

        return view('admin', ['adherants' => $adherants]);
    }
    
    public function delete($id){

        $profil = DB::select("select * from users where id = $id");


        return view('delete', ['profil' => $profil]);
    }

    public function profilDelete($id){
        DB::delete("delete from users where id = $id");

        return redirect('/');
    }

    public function raid(){
        return view('raid_des_salamandres');
    }

    public function randonnée(){
        return view('randonnée_des_leups');
    }

    public function compétitions(){
        return view('compétitions');
    }

    public function sorties(){
        return view('sorties');
    }

    public function marché_de_noel(){
        return view('marché_de_noel');
    }

    public function goban(){
        return view('goban_ruelles');
    }

    public function présentation(){
        return view('présentation');
    }

    public function presse(){
        return view('presse');
    }

    public function contact(){
        return view('contact');
    }

    public function adhesion(){
        return view('adhesion');
    }

    public function circuits(){
        return view ('circuits');
    }

    public function mentions_légales(){
        return view ('mentions_légales');
    }

    public function chartre(){
        return view ('chartre');
    }

    public function foo(){
        if(!Gate::allows('access-admin')){
            abort('403');
        }

        return view('test.foo');
    }

}
