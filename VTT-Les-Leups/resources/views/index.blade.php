@extends('layouts.base')

@section('content')

@if(session()->has('message'))

<h4 class="text-green-500">{{session()->get('message') }}</h4>

@endif


<div class="flex flex-wrap w-full flex-col items-center text-center">
    <h1
        class="text-yellow-500 title-font mb-2 text-4xl font-extrabold leading-10 tracking-tight text-left sm:text-5xl sm:leading-none md:text-6xl">
        Accueil</h1>
    <p class="text-yellow-500 lg:w-1/2 w-full leading-relaxed text-base">
        Bienvenue sur le site du VTT Les Leups.
    </p>
</div>
@endsection