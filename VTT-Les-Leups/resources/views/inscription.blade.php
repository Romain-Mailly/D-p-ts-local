@extends('layouts.base')

@section('content')



<div class="flex flex-wrap flex-col items-center text-center">
    <h1
        class="text-yellow-500 title-font mb-2 text-4xl font-extrabold leading-10 tracking-tight text-left sm:text-5xl sm:leading-none md:text-6xl">
        Formulaire d'inscription</h1>
    <p class="text-yellow-500 lg:w-1/2 w-full leading-relaxed text-base">
        Si vous avez une licence, vous pouvez vous créer un compte ci-dessous.
    </p>
</div>


<!-- component -->

<!--   tip; mx-auto -- jagab ilusti keskele  -->
<div class="bg-white p-10 md:w-3/4 lg:w-1/2 mx-auto">

    <form method="POST" action="">

    @csrf
     
        <!-- Nom -->
        <div class="flex items-center mb-5">
            <!--         tip - here neede inline-block , but why? -->
            <label for="nom" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Nom</label>
            <input type="text" id="nom" name="nom" placeholder="Doe" class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">
                        
                        @if($errors->has('nom'))
                        <h6 class="text-red-500 ml-10">Veuillez saisir un nom</h6>
                        @endif
                    </div>
                        
        <div class="flex items-center mb-5">
            <!-- Prénom -->
            <label for="prenom" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Prénom</label>
            <input type="text" id="prenom" name="prenom" placeholder="John" class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">
                        @if($errors->has('prenom'))
                        <h6 class="text-red-500 ml-10">Veuillez saisir un prénom</h6>
                        @endif
                    </div>
                        
        <div class="flex items-center mb-5">
            <!-- Date de naissance -->
            <label for="ddn" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Date de naissance</label>
            <input type="date" id="ddn" name="ddn" placeholder="date" class="flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-500 placeholder-gray-400
                        outline-none">
            @if($errors->has('ddn'))
                <br> <h6 class="text-red-500 ml-10">Veuillez saisir une date de naissance</h6>
            @endif
        </div>

        <div class="flex items-center mb-5">
            <!-- Numéro de licence -->
            <label for="licence" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Numéro de licence</label>
            <input type="text" id="licence" name="licence" placeholder="43072006391" class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">
            @if($errors->has('licence'))
                <br> <h6 class="text-red-500 ml-10">Veuillez saisir votre numéro de licence</h6>
            @endif
        </div>

        <div class="flex items-center mb-5">
            <!-- Identifiant -->
            <label for="id" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Identifiant</label>
            <input type="text" id="id" name="id" placeholder="John_Doe" class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">
            @if($errors->has('id'))
               <br> <h6 class="text-red-500 ml-10">Veuillez saisir un identifiant</h6>
            @endif
        </div>

        <div class="flex items-center mb-5">
            <!-- Mot de passe -->
            <label for="mdp" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Mot de passe</label>
            <input type="password" id="mdp" name="mdp" placeholder="**********" class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">
            @if($errors->has('mdp'))
               <br> <h6 class="text-red-500 ml-10">Veuillez saisir un mot de passe</h6>
            @endif
        </div>

        <div class="flex items-center mb-5">
            <!-- Confirmation de mot de passe -->
            <label for="mdp2" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Confirmer le mot de passe</label>
            <input type="password" id="mdp2" name="mdp2" placeholder="**********" class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">
            @if($errors->has('mdp2'))
                <br> <h6 class="text-red-500 ml-10">Veuillez confirmer votre mot de passe</h6>
            @endif
        </div>

        <div class="text-right">
            <button type="submit"
                class="py-3 px-5 bg-yellow-500 text-black font-bold rounded hover:text-yellow-500 border-2 border-yellow-500 hover:bg-white">S'inscrire</button>
            <button type="reset"
                class="py-3 px-5 bg-yellow-500 text-black font-bold rounded hover:text-yellow-500 border-2 border-yellow-500 hover:bg-white">Annuler</button>
        </div>

        <br>

        <span>Si vous avez deja un compte, <a href="{{ Route('connexion') }}" class="hover:underline text-yellow-500">cliquez ici pour vous
                connecter.</a></span>
    </form>
</div>


@endsection
