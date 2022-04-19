<nav class="flex items-center justify-between flex-wrap bg-gray-600 p-6">
    <div class="flex items-center flex-shrink-0 text-white mr-6">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4" />
        </svg>
        <a href="{{ Route('index') }}">
            <span class="font-semibold text-xl tracking-tight text-gray-50 hover:text-black">
                Cub'in Shop
            </span>
        </a>
    </div>
    <div class="w-full block flex-grow lg:flex lg:items-center lg:w-auto">
        <div class="text-white lg:flex-grow">
            <a href="{{ Route('index') }}"
                class="block mt-4 lg:inline-block lg:mt-0 text-grey-200 hover:text-black mr-4">
                Accueil
            </a>
            <a href="{{ Route('getpros') }}"
                class="block mt-4 lg:inline-block lg:mt-0 text-grey-200 hover:text-black mr-4">
                Produits
            </a>
            <a href="{{ Route('contact') }}" class="block mt-4 lg:inline-block lg:mt-0 text-teal-200 hover:text-black">
                Contact
            </a>
        </div>
        <div>
            <a href="#"
                class="inline-block text-sm px-4 py-2 leading-none border rounded text-white border-white hover:border-gray-600 hover:text-gray-600 hover:bg-white mt-4 lg:mt-0">Connexion</a>
        </div>
    </div>
</nav>
