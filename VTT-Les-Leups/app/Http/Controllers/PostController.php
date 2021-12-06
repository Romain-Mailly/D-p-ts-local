<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
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
        $profil = DB::select("select * from utilisateurs where util_id = $id");

        return view('profil', ['profil' => $profil]);

    }

    public function modif($id){
    $profil = DB::select("select * from utilisateurs where util_id = $id");

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


        DB::update("update utilisateurs set util_nom = '$request->nom' where util_id = $id");
        DB::update("update utilisateurs set util_prenom = '$request->prenom' where util_id = $id");
        DB::update("update utilisateurs set util_ddn = '$request->ddn' where util_id = $id");
        DB::update("update utilisateurs set util_adhesion = '$request->adhesion' where util_id = $id");
        DB::update("update utilisateurs set util_licence = '$request->licence' where util_id = $id");
        DB::update("update utilisateurs set util_adresse = '$request->adresse' where util_id = $id");
        DB::update("update utilisateurs set util_ville = '$request->ville' where util_id = $id");
        DB::update("update utilisateurs set util_cp = '$request->cp' where util_id = $id");
        DB::update("update utilisateurs set util_tel1 = '$request->tel1' where util_id = $id");
        DB::update("update utilisateurs set util_tel2 = '$request->tel2' where util_id = $id");
        DB::update("update utilisateurs set util_email1 = '$request->email1' where util_id = $id");
        DB::update("update utilisateurs set util_email2 = '$request->email2' where util_id = $id");
        DB::update("update utilisateurs set util_identifiant = '$request->id' where util_id = $id");
        // $mdp = Hash::make($request->mdp);
        // DB::update("update utilisateurs set util_mdp = '$mdp' where util_id = $id");


        return redirect('/');

    }

    public function admin(){

        $adherants = DB::select('select * from utilisateurs');

        return view('admin', ['adherants' => $adherants]);
    }
    
    public function delete($id){

        $profil = DB::select("select * from utilisateurs where util_id = $id");


        return view('delete', ['profil' => $profil]);
    }

    public function profilDelete($id){
        DB::delete("delete from utilisateurs where util_id = $id");

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
        return view('test.foo');
    }

    public function home(){
        return view('home');
    }

}
