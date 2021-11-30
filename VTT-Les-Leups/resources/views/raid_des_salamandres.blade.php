@extends('layouts.base')

@section('content')

<div class="flex flex-wrap flex-col items-center text-center">
    <h1
        class="text-yellow-500 title-font mb-2 text-4xl font-extrabold leading-10 tracking-tight text-left sm:text-5xl sm:leading-none md:text-6xl">
        Raid des Salamandres</h1>
    <p class="text-yellow-500 lg:w-1/2 w-full leading-relaxed text-base">
        Ici vous pouvez retrouvez l'historique du Raid des Salamandres
    </p>
</div>


<!-- Raid des Salamandres -->



<button class="float-right bg-yellow-500 text-black rounded hover:text-yellow-500 border-2 border-yellow-500 hover:bg-white px-4 py-2 m-2 rounded font-bold" type="button" data-dropdown-toggle="dropdown1">Années <i class="fas fa-sort-down"></i></button>

    <!-- Dropdown menu -->
    <div class="hidden bg-white text-base z-50 list-none divide-y divide-gray-100 rounded shadow my-4" id="dropdown1">
        <ul class="py-1" aria-labelledby="dropdown1">
        <li>
            <a href="#2021" class="focus:bg-yellow-600 text-sm hover:bg-yellow-500 text-gray-700 block px-4 py-2">2021</a>
        </li>
        <li>
            <a href="#2020" class="focus:bg-yellow-600 text-sm hover:bg-yellow-500 text-gray-700 block px-4 py-2">2020</a>
        </li>
        <li>
            <a href="#2019" class="focus:bg-yellow-600 text-sm hover:bg-yellow-500 text-gray-700 block px-4 py-2">2019</a>
        </li>
        <li>
            <a href="#2018" class="focus:bg-yellow-600 text-sm hover:bg-yellow-500 text-gray-700 block px-4 py-2">2018</a>
        </li>
        <li>
            <a href="#2017" class="focus:bg-yellow-600 text-sm hover:bg-yellow-500 text-gray-700 block px-4 py-2">2017</a>
        </li>
        </ul>
    </div>





<br>

<div class="mt-10">
<span class="text-2xl bg-yellow-500 xl:px-3 xl:py-3 rounded">Une épreuve de taille</span>
</div>

<br><br>

<p class="text-xl">Au départ de Saint-Gobain tout commence avec 25 km en VTT dans la forêt pour poursuivre 10 km de course à pied toujours en forêt pour rejoindre l’embarcadère. Après 3 km en canoë biplace et son épreuve de maniabilité, vous terminerez par 12 km en VTT pour une arrivée sur Saint-Gobain. Pour information toutes les distances annoncées ci-dessus sont fictives et change chaque années selon les parcours définitifs.</p>

<br>

<i class="text-xs fas fa-arrow-right"></i> <a href="/reglement_du_raid" class="text-xl text-yellow-500 hover:underline focus:text-yellow-700 ">Le réglement complet du Raid des Salamandres.</a>

<br>


<br>

<!-- Raid 2021 -->
<br id="2021">

<div class="mt-10">
<span class="text-2xl bg-yellow-500 xl:px-3 xl:py-3 rounded">Le Raid édition 2021</span>
</div>

<br><br>

<p class="text-xl">Une fois de plus vous étiez au rendez-vous, <b>98</b> équipes ont participé a cette édition 2021. Raid terminé en <b>3h20</b> pour l’équipe vainqueur.</p>

<br>

<center><img src="/images/Activités/vainqueur2021.jpg" alt="Vainqueur Raid des Salamandres 2021" class="rounded"></center>

<br>

<div class="text-xl">
    <p><i class="text-xs fas fa-arrow-right"></i> <a target="_blank" href="https://vttlesleups.fr/2021/11/26/resultat-par-equipe/" class="text-yellow-500 hover:underline focus:text-yellow-700">Résultats par équipe</a></p>
    <p><i class="text-xs fas fa-arrow-right"></i> <a target="_blank" href="https://vttlesleups.fr/2021/11/26/resultat-par-categorie-2021/" class="text-yellow-500 hover:underline focus:text-yellow-700">Résultats par catégorie</a></p>
    <p><i class="text-xs fas fa-arrow-right"></i> <a target="_blank" href="https://photos.google.com/share/AF1QipNRftboMBY_vFWQ-r8YnXNGzyzZDyCIuYI037BWDVz9mTYWtton7hTUhK4lK2RNoA?key=RzhLN2g3ek5VOTEwamd0bWRwOGxYUzJ0M0FqZEhn" class="text-yellow-500 hover:underline focus:text-yellow-700">Photos du Raid</a></p>
</div>

<br>

<!-- Raid 2020 -->
<br id="2020">

<div class="mt-10">
<span class="text-2xl bg-yellow-500 xl:px-3 xl:py-3 rounded">Le Raid édition 2020</span>
</div>

<br><br>

<p class="text-xl">Actuellement l'édition de tous les records avec <b>116</b> équipes et un temps record de <b>2h41</b> pour les vainqueurs.</p>

<br>

<center><img src="/images/Activités/vainqueur2020.jpg" alt="Vainqueur Raid des Salamandres 2020" class="rounded"></center>

<br>

<div class="text-xl">
    <p><i class="text-xs fas fa-arrow-right"></i> <a href="https://vttlesleups.fr/2021/11/26/resultat-par-equipe-2020/" class="text-yellow-500 hover:underline focus:text-yellow-700">Résultats par équipe</a></p>
    <p><i class="text-xs fas fa-arrow-right"></i> <a href="https://vttlesleups.fr/2021/11/26/resultat-par-categorie-2020/" class="text-yellow-500 hover:underline focus:text-yellow-700">Résultats par catégorie</a></p>
    <p><i class="fas fa-camera"></i> Photos du Raid :</a></p>
    <p><a target="_blank" href="https://photos.google.com/share/AF1QipMo4caabutDQD46hz-DA5UzwGu1kk_wZiXPMJK_o_IPICfUjtNGlrwfjD6_H86EWw?key=d3hVdTBreWlmeXNEMS1tTk9pcVZKeTljbTEyWkJR" class="text-yellow-500 hover:underline focus:text-yellow-700"><i class="text-xs fas fa-arrow-right"></i> À Saint-Gobain et Folembray</a></p>
    <p><a target="_blank" href="https://photos.google.com/share/AF1QipMxgFxExKI1pq8PcGt1YNfuE1KvJjxiAoLxpOWxPb5alzWW4fuioBG-pTjmHRepqQ?key=M2prQS0zR2FqeEp5cVlGRUM5T3d3d2lsdXlzRzF3" class="text-yellow-500 hover:underline focus:text-yellow-700"><i class="text-xs fas fa-arrow-right"></i> Parcours VTT</a></p>
    <p><a target="_blank" href="https://photos.google.com/share/AF1QipPUGQIGM7tVT838KfD_MNC-xdDV1lDpROUdDn4hJdZUFJk8QO4bjvo8Ave_H-aKCw?key=Y0pUNlRoVmFLbk9mVnlWY1VpVDRuSjI0WmJ3dGh3" class="text-yellow-500 hover:underline focus:text-yellow-700"><i class="text-xs fas fa-arrow-right"></i> Parcours Course à pied</a></p>
    <p><a target="_blank" href="https://photos.google.com/share/AF1QipMNlMWCQN6nERqua_y1kBvHMVPOn7FYjRXyV176-pSvTDu1OPXzVYSsbcllmrv-cQ?key=UEVqcXlPcHpLMmpCNzFuUF9uTzYtUTJ0d1R2c0xn" class="text-yellow-500 hover:underline focus:text-yellow-700"><i class="text-xs fas fa-arrow-right"></i> Parcours Canoë</a></p>
</div>


<!-- Raid 2019 -->
<br id="2019">

<div class="mt-10">
<span class="text-2xl bg-yellow-500 xl:px-3 xl:py-3 rounded">Le Raid édition 2019</span>
</div>

<br><br>

<p class="text-xl">Une belle édition, <b>98</b> équipes et un temps de <b>3h12</b> pour les vainqueurs.</p>

<br>

<center><img src="/images/Activités/vainqueur2019.jpg" alt="Vainqueur Raid des Salamandres 2019" class="rounded"></center>

<br>

<div class="text-xl">
    <p><i class="text-xs fas fa-arrow-right"></i> <a href="https://vttlesleups.fr/2021/11/26/resultat-par-equipe-2019/" class="text-yellow-500 hover:underline focus:text-yellow-700">Résultats par équipe</a></p>
    <p><i class="text-xs fas fa-arrow-right"></i> <a href="https://vttlesleups.fr/2021/11/26/resultat-par-categorie-2019/" class="text-yellow-500 hover:underline focus:text-yellow-700">Résultats par catégorie</a></p>
    <p><i class="fas fa-camera"></i> Photos du Raid :</a></p>
    <p><a target="_blank" href="https://photos.google.com/share/AF1QipM5DhqPq0vkHiQGyU8oHrh8f7hmVkp0952NgJKRgD6Vm0dIY_pDksjf_bbjoEQO9A?key=RVVxQmpieWZoUUhGQ29pTFRuaUJZQUwyRWprbjZR" class="text-yellow-500 hover:underline focus:text-yellow-700"><i class="text-xs fas fa-arrow-right"></i> À Saint-Gobain et Folembray</a></p>
    <p><a target="_blank" href="https://photos.google.com/share/AF1QipO38_Hlpn0jRCXaeARG1Zd2nHvOuzMJljqPtZSfFDDYKJJXEy1Cvz-HZJ9Y6Etx7A?key=TmRVaDNhZkNRZTI3SDRob0pZSjlWWTFZSTBnUDVB" class="text-yellow-500 hover:underline focus:text-yellow-700"><i class="text-xs fas fa-arrow-right"></i> Parcours VTT</a></p>
    <p><a target="_blank" href="https://photos.google.com/share/AF1QipPR2ueeCGz-aPMT4cQJD321NJTQ0UfTPGHEABzMn5ouDKTcIN225CAxzy1ZhH7x0A?key=cFBTcmJ5YWU0LXY5TTJTUmIzbmpEQzZWTGZhM0dn" class="text-yellow-500 hover:underline focus:text-yellow-700"><i class="text-xs fas fa-arrow-right"></i> Parcours Course à pied</a></p>
    <p><a target="_blank" href="https://photos.google.com/share/AF1QipOUeklI3Z3XA7A6-ZvFwTU4TXovqBF-ojIufns0z6XBPbEdoZzmto042iKyhoYyEg?key=VkdyY2VMdlFvak02STdWNGk4SXhFNkNtWk4xNVhR" class="text-yellow-500 hover:underline focus:text-yellow-700"><i class="text-xs fas fa-arrow-right"></i> Parcours Canoë</a></p>
</div>

<br><br>



<!-- Raid 2018 -->
<br id="2018">

<div class="mt-10">
<span class="text-2xl bg-yellow-500 xl:px-3 xl:py-3 rounded">Le Raid édition 2018</span>
</div>

<br><br>

<p class="text-xl">Une belle édition, <b>92</b> équipes et un temps de <b>3h12</b> pour les vainqueurs.</p>

<br>

<center><img src="/images/Activités/vainqueur2018.jpg" alt="Vainqueur Raid des Salamandres 2018" class="rounded"></center>

<br>

<div class="text-xl">
    <p><i class="text-xs fas fa-arrow-right"></i> <a target="_blank" href="https://vttlesleups.fr/2021/11/26/resultat-par-equipe-2018/" class="text-yellow-500 hover:underline focus:text-yellow-700">Résultats par équipe</a></p>
    <p><i class="text-xs fas fa-arrow-right"></i> <a target="_blank" href="https://vttlesleups.fr/2021/11/26/resultat-par-categorie-2018/" class="text-yellow-500 hover:underline focus:text-yellow-700">Résultats par catégorie</a></p>
    <p><i class="text-xs fas fa-arrow-right"></i> <a target="_blank" href="https://photos.google.com/share/AF1QipOQiiiO4pReTmIt7Ei-n0k7ASjH_L7jHkeuYZylv0EZIk33qQBGW3FONKWKmG_ukA?key=S1NMUHd1UjFBcTZOdEdPVkZMcmh3emtJbmNEZXp3" class="text-yellow-500 hover:underline focus:text-yellow-700">Photos du Raid</a></p>
</div>

<br><br>

<!-- Raid 2017 -->

<div class="mt-10" id="2017">
<span class="text-2xl bg-yellow-500 xl:px-3 xl:py-3 rounded">Le Raid édition 2017</span>
</div>

<br><br>

<p class="text-xl">Une belle édition, <b>90</b> équipes et un temps de <b>3h26</b> pour les vainqueurs.</p>

<br>

<center><img src="/images/Activités/vainqueur2017.jpg" alt="Vainqueur Raid des Salamandres 2017" class="rounded"></center>

<br>

<div class="text-xl">
    <p><i class="text-xs fas fa-arrow-right"></i> <a target="_blank" href="https://vttlesleups.fr/2021/11/26/resultat-par-equipe-2017/" class="text-yellow-500 hover:underline focus:text-yellow-700">Résultats par équipe</a></p>
    <p><i class="text-xs fas fa-arrow-right"></i> <a target="_blank" href="https://vttlesleups.fr/2021/11/26/resultat-par-categorie-2017/" class="text-yellow-500 hover:underline focus:text-yellow-700">Résultats par catégorie</a></p>
    <p><i class="text-xs fas fa-arrow-right"></i> <a target="_blank" href="https://photos.google.com/share/AF1QipN4CWPRcHz1BYDHe99x-VqKyC5g-YNUGowQSfLLZtgIVDigC13_dnJbhnjISYq27w?key=UGdzR3RqbUltLVhibGdCbnFBZzBSN21yY3RDRnF3" class="text-yellow-500 hover:underline focus:text-yellow-700">Photos du Raid</a></p>
</div>

<br><br>



@endsection