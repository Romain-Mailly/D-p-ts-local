@extends('layouts.header')

@section('content')
    <h1>Bienvenue dans la page de contact</h1>
<br><br>

    <form method="POST" action="#">
        <label for="nom" class="block text-gray-700 text-sm font-bold mb-2">Nom: </label> 
        <input type="text" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" name="nom" id="nom" placeholder="Nom">

    <br><br>

        <label for="prenom" class="block text-gray-700 text-sm font-bold mb-2">Prénom: </label> 
        <input type="text" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" name="prenom" id="prenom" placeholder="Prénom">

    <br><br>

        <label for="ddn" class="block text-gray-700 text-sm font-bold mb-2">Date de naissance: </label> 
        <input type="date" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" name="ddn" id="ddn" placeholder="Date de naissance">
    </form>
@endsection