@extends('layouts.base')

@section('content')

<div class="flex flex-wrap flex-col items-center text-center">
    <h1
        class="text-yellow-500 title-font mb-2 text-4xl font-extrabold leading-10 tracking-tight text-left sm:text-5xl sm:leading-none md:text-6xl">
        La presse et les Leups</h1>
    <p class="text-yellow-500 lg:w-1/2 w-full leading-relaxed text-base">
        Les Leups sont aussi dans la presse.
    </p>
</div>

<br><br>


    <div class="grid">
        <div class="md:grid md:grid-cols-3 md:gap-4">
            <div class="text-lg font-semibold"><img alt="Rando 2016" class="rounded" src="images/Presse/rando2016.jpg">Rando 2016</div>
            <div class="text-lg font-semibold"><img alt="Rando 2015" class="rounded" src="images/Presse/rando2015-1.jpg">Rando 2015</div>
            <div class="text-lg font-semibold"><img alt="Toujours d'attaques !" class="rounded" src="images/Presse/attaque.jpg">Toujours d'attaque !</div>
        </div> 
    </div>

    <br><br><br><br>

    <div class="grid">
        <div class="md:grid md:grid-cols-3 md:gap-4">
            <div class="text-lg font-semibold"><img alt="1er Mai 2015" class="rounded" src="images/Presse/mai2015.jpg">1er mai 2015</div>
            <div class="text-lg font-semibold"><img alt="Rando 2015" class="rounded" src="images/Presse/rando2015-2.jpg">Rando 2015</div>
            <div class="text-lg font-semibold"><img alt="Motivés !" class="rounded" src="images/Presse/motivés.jpg">Motivés !</div>
        </div> 
    </div>



@endsection