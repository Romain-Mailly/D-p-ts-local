@extends('layouts.base')

@section('content')

<div class="flex flex-wrap w-full flex-col items-center text-center">
    <h1
        class="text-yellow-500 title-font mb-2 text-4xl font-extrabold leading-10 tracking-tight text-left sm:text-5xl sm:leading-none md:text-6xl">
        Profil</h1>
    <p class="text-yellow-500 lg:w-1/2 w-full leading-relaxed text-base">
        Bienvenue sur ton profil petit loup, ici tu pourras retrouver les informations te concernant.
    </p>
</div>


<!-- component -->
<!-- <div class="bg-gray-200 font-sans h-screen w-full flex flex-row justify-center items-center"> -->
    <div class="mt-20 card w-full md:w-96 mx-auto bg-white rounded shadow hover:shadow-xl">
       <img class="w-32 mx-auto rounded-full border-8 border-white" src="/images/Adhérants/{{ $profil[0]->name }}.jpg" alt="Photo de {{ $profil[0]->prenom }} {{ $profil[0]->name }}">
       <div class="text-center mt-2 text-3xl font-medium">{{ $profil[0]->prenom }} {{ $profil[0]->name }}</div>
       <div class="text-center mt-2 font-light text-sm">Numéro de licence: {{ $profil[0]->licence }}</div>
       <div class="text-center font-normal text-lg">Identifiant: {{ $profil[0]->identifiant }}</div>
       <div class="px-6 text-center mt-2 font-light text-sm">
         <p>
           Date d'adhésion: {{ $profil[0]->adhesion }}
         </p>
       </div>
       <hr class="mt-8">
       <div class="sm:justify-text-center md:flex p-4">
         <div class="lg:w-full text-center">
           <span class="font-bold">{{ $profil[0]->ddn }}</span>
         </div>
         <div class="w-0 border border-gray-300">
           
         </div>
         <div class="lg:w-full text-center">
           <span class="font-bold">{{ $profil[0]->email }}</span>
         </div>
       </div>
    </div>
  <!-- </div> -->
  <br>
<div class="text-center">
  <a href="/modif/{{ $profil[0]->id }}" class="p-2 pl-5 pr-5 bg-transparent border-2 border-gray-500 text-gray-500 text-lg rounded-lg transition-colors duration-700 transform hover:bg-gray-500 hover:text-gray-100 focus:border-4 focus:border-gray-300">Modifier le profil</a>
</div>

@endsection