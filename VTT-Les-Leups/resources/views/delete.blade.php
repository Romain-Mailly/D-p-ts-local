@extends('layouts.base')

@section('content')

<p class="text-3xl">Page de suppression</p>

<br><hr><br>



<img class="mx-auto" height="600" width="600" src="/images/Adhérants/{{ $profil[0]->name }}.jpg" alt="Photo de {{ $profil[0]->prenom}} {{ $profil[0]->name }}">

<p class="text-yellow-500 text-2xl text-center"> Êtes-vous sur de vouloir supprimer le profil de {{ $profil[0]->prenom}} {{ $profil[0]->name }} ?</p>

<br><br>

<form class="text-center" action="{{ Route('profil.delete', ['id'=> $profil[0]->id]) }}" method="POST">
    @csrf
    <button type="submit" class="mr-4 bg-transparent hover:bg-green-500 text-green-500 font-semibold hover:text-white py-2 px-4 border border-green-500 hover:border-transparent rounded">Oui</button>
    <a href="/admin" class="mr-4 bg-transparent hover:bg-red-500 text-red-500 font-semibold hover:text-white py-2 px-4 border border-red-500 hover:border-transparent rounded">Non</a>
</form>

@endsection