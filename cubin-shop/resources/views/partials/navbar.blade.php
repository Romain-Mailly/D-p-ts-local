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


        <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>

        <div @click.away="open = false" class="relative" x-data="{ open: false }">
            <button @click="open = !open"
                class="border text-white hover:text-gray-600 flex flex-row items-center w-full px-4 py-2 mt-2 text-sm font-semibold text-left bg-transparent rounded-lg dark-mode:bg-transparent dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:focus:bg-gray-600 dark-mode:hover:bg-gray-600 md:block hover:text-gray-900 focus:text-gray-900 hover:bg-gray-200 hover:text-gray-600 focus:bg-gray-200 focus:outline-none focus:shadow-outline">
                Se connecter
                <svg fill="currentColor" viewBox="0 0 20 20" :class="{'rotate-180': open, 'rotate-0': !open}"
                    class="text-white hover:text-gray-600 inline w-4 h-4 mt-1 ml-1 transition-transform duration-200 transform md:-mt-1">
                    <path fill-rule="evenodd"
                        d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                        clip-rule="evenodd"></path>
                </svg>
            </button>
            <div x-show="open" x-transition:enter="transition ease-out duration-100"
                x-transition:enter-start="transform opacity-0 scale-95"
                x-transition:enter-end="transform opacity-100 scale-100"
                x-transition:leave="transition ease-in duration-75"
                x-transition:leave-start="transform opacity-100 scale-100"
                x-transition:leave-end="transform opacity-0 scale-95"
                class="absolute right-0 mt-2 origin-top-right rounded-md shadow-lg">
                <div class="px-2 py-2 bg-white rounded-md shadow dark-mode:bg-gray-800">



                    <div class="w-full max-w-xs">
                        <form class="bg-white shadow-md rounded px-8 pt-6 pb-8">
                            <div class="mb-4">
                                <label class="block text-gray-700 text-sm font-bold mb-2" for="username">
                                    Login
                                </label>
                                <input
                                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                    id="username" type="text" placeholder="Login">
                            </div>
                            <div class="mb-6">
                                <label class="block text-gray-700 text-sm font-bold mb-2" for="password">
                                    Mot de passe
                                </label>
                                <input
                                    class="shadow appearance-none border border-red-500 rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"
                                    id="password" type="password" placeholder="******************">
                                <p class="text-red-500 text-xs italic">Veuillez saisir un mot de passe.</p>
                            </div>
                            <div class="items-center justify-between">
                                <a class="text-center inline-block align-baseline font-bold text-sm text-blue-500 hover:text-blue-800"
                                    href="#">
                                    Mot de passe oublié ?
                                </a>
                                <button
                                    class="align-center bg-blue-500 mt-2 py-2 border hover:border-blue-500 hover:bg-white hover:text-blue-500 text-white font-bold px-4 rounded focus:outline-none focus:shadow-outline"
                                    type="button">
                                    Connexion
                                </button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
    </div>
</nav>
