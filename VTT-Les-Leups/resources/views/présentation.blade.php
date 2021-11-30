@extends('layouts.base')

@section('content')

<div class="flex flex-wrap flex-col items-center text-center">
    <h1
        class="text-yellow-500 title-font mb-2 text-4xl font-extrabold leading-10 tracking-tight text-left sm:text-5xl sm:leading-none md:text-6xl">
        Présentation du club</h1>
    <p class="text-yellow-500 lg:w-1/2 w-full leading-relaxed text-base">
        Ici nous allons voir ce que font les Leups !
    </p>
</div>

<br><br>

<p class="text-xl">Les Leups roulent, font des pauses, graillent et font des photos parce qu'ils le valent bien !</p>

<br><br>


    <div class="grid">
        <div class="md:grid md:grid-cols-3 md:gap-4">
            <div class="text-lg font-semibold"><img alt="Sortie hivernale" class="rounded" src="images/Présentation/sortie_hivernal.jpg">Sortie hivernal</div>
            <div class="text-lg font-semibold"><img alt="Rando de Lagny" class="rounded" src="images/Présentation/lagny.jpg">Rando de Lagny</div>
            <div class="text-lg font-semibold"><img alt="Départ du Rond d'Orléans" class="rounded" src="images/Présentation/rond-orleans.jpg">Départ du Rond d'Orléans</div>
        </div> 
    </div>

<br><br>

    <div class="grid">
        <div class="md:grid md:grid-cols-2">
            <div class="text-lg font-semibold"><img alt="Départ de Saint-Gobain" class="rounded" src="images/Présentation/saint_gobain.jpg">Départ de Saint-Gobain</div>
            <div class="text-lg font-semibold"><img alt="Beaujolais Nouveau au ravito" class="rounded" src="images/Présentation/beaujolais.jpg">Beaujolais Nouveau au ravito</div>
        </div> 
    </div>

<br><br><br><br>


@endsection
