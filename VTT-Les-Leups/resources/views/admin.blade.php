@extends('layouts.base')

@section('content')


<div class="flex flex-wrap flex-col items-center text-center">
    <h1
        class="text-yellow-500 title-font mb-2 text-4xl font-extrabold leading-10 tracking-tight text-left sm:text-5xl sm:leading-none md:text-6xl">
        Admin</h1>
    <p class="text-yellow-500 lg:w-1/2 w-full leading-relaxed text-base">
        Bienvenue sur la page admin 
    </p>
</div>



<span class="float-left text-2xl"><a class="hover:underline text-yellow-500" href="/inscription"><i class="fas fa-user-plus"></i> Cliquez ici</a> pour créer un profil.</span>

<br><br>


<section class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-4 py-12">
    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-3 gap-6">
@if (count($adherants) > 0)
        @foreach($adherants as $adherant)
       
            <div class="w-full bg-white rounded-lg shadow-lg p-12 flex flex-col justify-center items-center">
                <div class="mb-8">
                <a href="profil/{{$adherant->util_id }}">
                    <img class="object-center object-cover rounded h-50 w-50" src="/images/Adhérants/{{$adherant->util_nom}}.jpg" alt="photo">
                </a>
                </div>
                <div class="text-center">
                    <p class="text-xl text-gray-700 font-bold mb-2"><a href="profil/{{$adherant->util_id }}">{{ $adherant->util_prenom }} {{ $adherant->util_nom }}</a></p>
                    <p class="text-base text-gray-400 font-normal">{{ $adherant->util_licence }}</p>
                    <br>
                    <a href="/delete/{{ $adherant->util_id }}" class="py-3 px-3 bg-red-500 text-black font-bold rounded hover:text-red-500 border-2 border-red-500 hover:bg-white"><i class="far fa-trash-alt"></i> Supprimer</a>
                </div>
            </div>
            
            
            @endforeach
        </div>
    </section>
</>
        @else
        <span>Aucun post en base de données</span>
    @endif


@endsection
