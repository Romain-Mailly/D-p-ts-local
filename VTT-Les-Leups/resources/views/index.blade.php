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




 <!-- Dropdown menu -->
<button class="float-right bg-yellow-500 text-black rounded hover:text-yellow-500 border-2 border-yellow-500 hover:bg-white px-4 py-2 m-2 rounded font-bold" type="button" data-dropdown-toggle="dropdown2">Présentation du club <i class="fas fa-sort-down"></i></button>

   
    <div class="hidden bg-white text-base z-50 list-none divide-y divide-gray-100 rounded shadow my-4" id="dropdown2">
        <ul class="py-1" aria-labelledby="dropdown2">
        <li>
            <a href="/présentation" class="focus:bg-yellow-600 text-sm hover:bg-yellow-500 text-gray-700 block px-4 py-2">Que font les Leups ?</a>
        </li>
        <li>
            <a href="/presse" class="focus:bg-yellow-600 text-sm hover:bg-yellow-500 text-gray-700 block px-4 py-2">La presse et les Leups</a>
        </li>
        <li>
            <a href="/contact" class="focus:bg-yellow-600 text-sm hover:bg-yellow-500 text-gray-700 block px-4 py-2">Contact</a>
        </li>
        </ul>
    </div>

<br><br><br><br><br><br>

<img src="/images/banniere.png" alt="Bannière les Leups">

<br><br>

<center><img src="/images/Accueil/fond1.jpg" alt="Photo randonnée des Leups 2019" class="rounded"></center>

<br><br>

<div class="container-md">

<p class="text-xl">
Si l’on se penche sur la cartographie de notre forêt gobannaise nous pouvons y lire : « pré aux leups, bois des leups » là tout près de Saint Gobain, regardez bien…du côté de Saint Nicolas. Il faut savoir que « les Leups », qui vient du vieux français, ou «les loups » étaient bien présents sur nos terres jusqu’en 1860 approximativement.
</p>

<br><br>

<p class="text-xl">
A l’origine notre association de VTT est née par la volonté d’un groupe d’amis se réunissant pour partager les plaisirs d’une pratique sportive et l’Amour de la nature. Ils ont ainsi décidé de prendre pour nom : « les leups » en hommage à l’histoire de notre forêt et à ces nobles animaux sauvages qui savaient parfaitement s’inscrire et trouver leur individualité au sein d’un groupe solidaire. Cela renvoie bien à la pratique du VTT, sport individuel pratiqué en groupe et dans la convivialité. C’est ainsi que s’est créée en 1999 l’association « VTT Les Leups », rejoignant la section de cyclisme de Chauny, puis celle de Tergnier en 2005.
</p>

<br><br>

<p class="text-xl">
Depuis cette date, l’association ne cesse de s’accroitre pour atteindre la trentaine de licenciés (mixte), du débutant au confirmé, avec différents niveaux et degrés de dextérité. Chacun et chacune viennent y chercher avant tout le plaisir, le plaisir de pédaler, découvrir, partager et échanger. L’association a fait le choix de s’engager auprès de l’UFOLEP (Union Française des Œuvres Laïques d’Education Physique) qui est la première fédération sportive multisports de France. Son slogan « une autre idée du sport » correspond aux idées qu’elle véhicule : amateurisme, convivialité, santé.
</p>


<br><br>

<p class="text-xl">
En Septembre 2013, la Meute a choisi de revenir sur son territoire d’origine et de s’intégrer au dynamisme de la vie associative de Saint-Gobain. La commune de Saint Gobain, nichée au cœur d’un magnifique massif forestier, ouvre de multiples départs et possibilités pour notre pratique. Des terrains propices aux différentes pratiques du VTT proposant des chemins roulants, des singles techniques, ludiques, des belles descentes mais également des belles côtes… Une réelle terre d’aventure et de sensations pour vététistes débutants ou plus avertis.
</p>

<br><br>

<p class="text-xl">
Nos rendez-vous hebdomadaires sont les suivants :
</p>

<br>

<p class="text-xl">
Sorties dominicales sportives au départ du gymnase de la Chesnoye à Saint Gobain, à 9h00
Un départ pour une ballade chaque samedi à 9h00 de la mairie de Barisis.
Puis à la belle période une sortie supplémentaire est proposée le mercredi soir (18h00) au départ de Barisis.
la sortie des anciens a lieu le mardi après midi, depuis Barisis.
Depuis 2005, nous organisons une randonnée ouverte au public afin de partager notre sport et faire découvrir les massifs forestiers de Saint-Gobain et de Coucy-Basse. Cette randonnée connait un succès croissant (sauf quand il pleut  ! ) .
</p>

</div>


@endsection