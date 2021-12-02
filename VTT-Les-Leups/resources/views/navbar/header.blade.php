<div class="bg-yellow-500 w-full h-full">
  <center><a href="{{ Route('index') }}"><img class="animate-pulse" src="/images/logo.png" alt="Logo VTT | Les Leups"></a></center>
</div>





<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" rel="stylesheet">
  <div class="w-screen w-full flex flex-row items-center p-1 justify-between bg-black shadow-xs">
    <a href="{{ Route('index') }}" class="ml-8 text-lg text-yellow-500 font-bold hidden md:flex">VTT | Les Leups</a>

      <div class="flex mr-8 hidden md:flex">
      <div class="max-w-lg mx-auto">
    
    <button class="bg-yellow-500 text-black rounded hover:text-yellow-500 border-2 border-yellow-500 hover:bg-white px-4 py-2 m-2 rounded font-bold" type="button" data-dropdown-toggle="dropdown"><i class="fas fa-biking"></i>  Activités <i class="fas fa-sort-down"></i></button>

    <!-- Dropdown menu -->
    <div class="hidden bg-white text-base z-50 list-none divide-y divide-gray-100 rounded shadow my-4" id="dropdown">
        <ul class="py-1" aria-labelledby="dropdown">
        <li>
            <a href="/raid_des_salamandres" class="focus:bg-yellow-600 text-sm hover:bg-yellow-500 text-gray-700 block px-4 py-2">Le Raid des Salamandres</a>
        </li>
        <li>
            <a href="/randonnée_des_leups" class="focus:bg-yellow-600 text-sm hover:bg-yellow-500 text-gray-700 block px-4 py-2">La Randonnée des Leups</a>
        </li>
        <li>
            <a href="/compétitions" class="focus:bg-yellow-600 text-sm hover:bg-yellow-500 text-gray-700 block px-4 py-2">Compétition</a>
        </li>
        <li>
            <a href="/goban_ruelles" class="focus:bg-yellow-600 text-sm hover:bg-yellow-500 text-gray-700 block px-4 py-2">Goban'Ruelles</a>
        </li>
        <li>
            <a href="/marché_de_noel" class="focus:bg-yellow-600 text-sm hover:bg-yellow-500 text-gray-700 block px-4 py-2">Marché de Noël</a>
        </li>
        <li>
            <a href="/sorties" class="focus:bg-yellow-600 text-sm hover:bg-yellow-500 text-gray-700 block px-4 py-2">Sorties hebdomadaires</a>
        </li>
        </ul>
    </div>
</div>

        <a href="{{ Route('circuits') }}" class="bg-yellow-500 text-black rounded hover:text-yellow-500 border-2 border-yellow-500 hover:bg-white px-4 py-2 m-2 rounded font-bold"><i class="fas fa-map-marked-alt"></i> Tracés GPS</a>
        <a href="{{ Route('shop') }}" class="bg-yellow-500 text-black rounded hover:text-yellow-500 border-2 border-yellow-500 hover:bg-white px-4 py-2 m-2 rounded font-bold"><i class="fas fa-shopping-cart"></i> Shop</a>
        <a href="{{ Route('partenaires') }}" class="bg-yellow-500 text-black rounded hover:text-yellow-500 border-2 border-yellow-500 hover:bg-white px-4 py-2 m-2 rounded font-bold"><i class="far fa-handshake"></i> Partenaires</a>
        <a href="{{ Route('connexion') }}" class="bg-yellow-500 text-black rounded hover:text-yellow-500 border-2 border-yellow-500 hover:bg-white px-4 py-2 m-2 rounded font-bold"><i class="fas fa-sign-in-alt"></i> Connexion</a>
        <a href="{{ Route('admin') }}" class="bg-yellow-500 text-black rounded hover:text-yellow-500 border-2 border-yellow-500 hover:bg-white px-4 py-2 m-2 rounded font-bold"><i class="fas fa-user-cog"></i> Admin</a>
        
        <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"></script>
<div class=" bg-transparent flex justify-center items-center dark:bg-gray-500">
  <div x-data="{ open: false }" class="bg-black dark:bg-gray-800 w-64  shadow flex justify-center items-center">
      <div @click="open = !open" class="bg-transparent border border-transparent relative" :class="{'border-yellow-500 transform transition duration-300 ': open}" x-transition:enter-end="transform opacity-100 scale-100" x-transition:leave="transition ease-in duration-75" x-transition:leave-start="transform opacity-100 scale-100">
        <div class="flex justify-center items-center space-x-3 cursor-pointer">
          <div class="w-12 h-12 rounded-full overflow-hidden border-2 dark:border-white border-gray-900">
            <img src="https://images.unsplash.com/photo-1610397095767-84a5b4736cbd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80" alt="" class="w-full h-full object-cover">
          </div>
          <div class="font-semibold dark:text-white text-gray-300 text-lg">
            <div class="cursor-pointer">Gros BG</div>
          </div>
        </div>
        <div x-show="open" x-transition:enter="transition ease-out duration-100" x-transition:enter-start="transform opacity-0 scale-95" x-transition:enter-end="transform opacity-100 scale-100" x-transition:leave="transition ease-in duration-75" x-transition:leave-start="transform opacity-100 scale-100" x-transition:leave-end="transform opacity-0 scale-95" class="absolute w-60 px-5 py-3 dark:bg-gray-800 bg-white rounded-lg shadow border dark:border-transparent mt-5">
          <ul class="space-y-3 dark:text-white">
            <li class="font-medium">
              <a href="/profil/2" class="flex items-center transform transition-colors duration-200 border-r-4 border-transparent hover:border-indigo-700">
                <div class="mr-3">
                  <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path></svg>
                </div>
                Profil
              </a>
            </li>
            <li class="font-medium">
              <a href="#" class="flex items-center transform transition-colors duration-200 border-r-4 border-transparent hover:border-indigo-700">
                <div class="mr-3">
                  <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"></path><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path></svg>
                </div>
                Setting
              </a>
            </li>
            <hr class="dark:border-gray-700">
            <li class="font-medium">
              <a href="#" class="flex items-center transform transition-colors duration-200 border-r-4 border-transparent hover:border-red-600">
                <div class="mr-3 text-red-600">
                  <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1"></path></svg>
                </div>
                Deconnexion
              </a>
            </li>
          </ul>
        </div>
      </div>
  </div>
</div>
        
      </div>

  


  </div>
  