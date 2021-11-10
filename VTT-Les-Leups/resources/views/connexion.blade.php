@extends('layouts.base')

@section('content')



<div class="flex flex-wrap w-full flex-col items-center text-center">
    <h1
        class="text-yellow-500 title-font mb-2 text-4xl font-extrabold leading-10 tracking-tight text-left sm:text-5xl sm:leading-none md:text-6xl">
        Formulaire de connexion</h1>
    <p class="text-yellow-500 lg:w-1/2 w-full leading-relaxed text-base">
        Remplissez les champs suivant pour vous connecter.
    </p>
</div>


<br>



<div class="bg-white p-10 md:w-3/4 lg:w-1/2 mx-auto">

    <form action="">

    @csrf

        <!--       flex - asjad korvuti, nb! flex-1 - element kogu ylejaanud laius -->
        <div class="flex items-center mb-5">
            <!--         tip - here neede inline-block , but why? -->
            <label for="id" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Identifiant</label>
            <input type="text" id="id" name="id" placeholder="John_Doe" class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">
        </div>

        <div class="flex items-center mb-5">
            <!--         tip - here neede inline-block , but why? -->
            <label for="mdp" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Mot de passe</label>
            <input type="password" id="mdp" name="mdp" placeholder="**********" class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">
        </div>

        <div class="text-right">
            <button type="submit"
                class="py-3 px-8 bg-yellow-500 text-black font-bold rounded hover:text-yellow-500 border-2 border-yellow-500 hover:bg-white">Connexion</button>
        </div>

        <br>

        <span>Si n'avez pas de compte, <a href="{{ Route('inscription') }}" class="hover:underline text-yellow-500">cliquez ici pour vous
                inscrire.</a></span>
    </form>
</div>




@endsection