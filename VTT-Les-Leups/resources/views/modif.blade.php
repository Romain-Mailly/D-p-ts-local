@extends('layouts.base')

@section('content')



<div class="flex flex-wrap flex-col items-center text-center">
    <h1
        class="text-yellow-500 title-font mb-2 text-4xl font-extrabold leading-10 tracking-tight text-left sm:text-5xl sm:leading-none md:text-6xl">
        Modifier le profil</h1>
    <p class="text-yellow-500 lg:w-1/2 w-full leading-relaxed text-base">
        Ici vous pourrez modifier les informations de votre profil.
    </p>
</div>



<div class="bg-white p-10 md:w-3/4 lg:w-1/2 mx-auto">
<i class="float-right">champs obligatoires *</i>
<br><br>
    <form method="POST" action="">

    @csrf
     
        <!-- Nom -->
        <div class="flex items-center mb-5">
            <!--         tip - here neede inline-block , but why? -->
            <label for="nom" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Nom</label>
            <input type="text" id="nom" name="nom" placeholder="Doe" value="{{ $profil[0]->util_nom }}" class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">*
                        
                        @if($errors->has('nom'))
                        <h6 class="text-red-500 ml-10">Veuillez saisir un nom</h6>
                        @endif
                    </div>
                        
        <div class="flex items-center mb-5">
            <!-- Prénom -->
            <label for="prenom" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Prénom</label>
            <input type="text" id="prenom" name="prenom" placeholder="John" value="{{ $profil[0]->util_prenom }}"  class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">*
            @if($errors->has('prenom'))
            <h6 class="text-red-500 ml-10">Veuillez saisir un prénom</h6>
            @endif
        </div>
                        
        <div class="flex items-center mb-5">
            <!-- Date de naissance -->
            <label for="ddn" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Date de naissance</label>
            <input type="date" id="ddn" name="ddn" placeholder="date" value="{{ $profil[0]->util_ddn }}"  class="flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-500 placeholder-gray-400
                        outline-none">*
            @if($errors->has('ddn'))
                <br> <h6 class="text-red-500 ml-10">Veuillez saisir une date de naissance</h6>
            @endif
        </div>
                        
        <div class="flex items-center mb-5">
            <!-- Date de naissance -->
            <label for="adhesion" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Date de 1ère adhésion</label>
            <input type="date" name="adhesion" placeholder="date" value="{{ $profil[0]->util_adhesion }}"  class="flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-500 placeholder-gray-400
                        outline-none">*
            @if($errors->has('ddn'))
                <br> <h6 class="text-red-500 ml-10">Veuillez saisir votre date d'adhésion</h6>
            @endif
        </div>

        <div class="flex items-center mb-5">
            <!-- Numéro de licence -->
            <label for="licence" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Numéro de licence (ufolep)</label>
            <input type="text" id="licence" name="licence" placeholder="43072006391" value="{{ $profil[0]->util_licence }}"  class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">*
            @if($errors->has('licence'))
                <br> <h6 class="text-red-500 ml-10">Veuillez saisir votre numéro de licence</h6>
            @endif
        </div>

        <div class="flex items-center mb-5">
            <!-- Adresse postale -->
            <label for="adresse" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Adresse</label>
            <input type="text" id="adresse" name="adresse" placeholder="6 rue de Montevideo" value="{{ $profil[0]->util_adresse }}"  class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">*
            @if($errors->has('adresse'))
                <br> <h6 class="text-red-500 ml-10">Veuillez saisir votre adresse</h6>
            @endif
        </div>

        <div class="flex items-center mb-5">
            <!-- Ville -->
            <label for="ville" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Ville</label>
            <input type="text" id="ville" name="ville" placeholder="Saint Gobain" value="{{ $profil[0]->util_ville }}"  class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">*
            @if($errors->has('ville'))
                <br> <h6 class="text-red-500 ml-10">Veuillez saisir votre ville</h6>
            @endif
        </div>

        <div class="flex items-center mb-5">
            <!-- Code postal -->
            <label for="cp" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Code postal</label>
            <input type="text" id="cp" name="cp" placeholder="02410" value="{{ $profil[0]->util_cp }}"  class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">*
            @if($errors->has('cp'))
                <br> <h6 class="text-red-500 ml-10">Veuillez saisir votre code postal</h6>
            @endif
        </div>

        <div class="flex items-center mb-5">
            <!-- Téléphone 1 -->
            <label for="tel1" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Téléphone 1</label>
            <input type="text" id="tel1" name="tel1" placeholder="0627041421" value="{{ $profil[0]->util_tel1 }}"  class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">*
            @if($errors->has('tel1'))
                <br> <h6 class="text-red-500 ml-10">Veuillez saisir votre code postal</h6>
            @endif
        </div>

        <div class="flex items-center mb-5">
            <!-- Téléphone 2 -->
            <label for="tel2" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Téléphone 2</label>
            <input type="text" id="tel2" name="tel2" placeholder="0621140427" value="{{ $profil[0]->util_tel2 }}"  class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">
        </div>

        <div class="flex items-center mb-5">
            <!-- Email 1 -->
            <label for="email1" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Email 1</label>
            <input type="email" id="email1" name="email1" placeholder="vttlesleups@hotmail.com" value="{{ $profil[0]->util_email1 }}"  class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">*
            @if($errors->has('email1'))
                <br> <h6 class="text-red-500 ml-10">Veuillez saisir votre email</h6>
            @endif
        </div>

        <div class="flex items-center mb-5">
            <!-- Email 2 -->
            <label for="email2" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Email 2</label>
            <input type="email" id="email2" name="email2" placeholder="john.doe@email.fr" value="{{ $profil[0]->util_email2 }}"  class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">
            @if($errors->has('email2'))
                <br> <h6 class="text-red-500 ml-10">Veuillez saisir une adresse email</h6>
            @endif
        </div>

        <div class="flex items-center mb-5">
            <!-- Identifiant -->
            <label for="id" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Identifiant</label>
            <input type="text" id="id" name="id" placeholder="Initiales + année 1ère adéshion + mois (ex: DC202011)" value="{{ $profil[0]->util_identifiant }}"  class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">*
            @if($errors->has('id'))
               <br> <h6 class="text-red-500 ml-10">Veuillez saisir un identifiant</h6>
            @endif
        </div>

        <!-- <div class="flex items-center mb-5">
            Mot de passe
            <label for="mdp" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Mot de passe</label>
            <input type="password" id="mdp" name="mdp" placeholder="**********" class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">*
            @if($errors->has('mdp'))
               <br> <h6 class="text-red-500 ml-10">Veuillez saisir un mot de passe</h6>
            @endif
        </div>

        <div class="flex items-center mb-5">
            Confirmation de mot de passe
            <label for="mdp2" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Confirmer le mot de passe</label>
            <input type="password" id="mdp2" name="mdp2" placeholder="**********" class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">*
            @if($errors->has('mdp2'))
                <br> <h6 class="text-red-500 ml-10">Veuillez confirmer votre mot de passe</h6>
            @endif
        </div> -->

        <div class="text-right">
            <button type="submit"
                class="py-3 px-5 bg-yellow-500 text-black font-bold rounded hover:text-yellow-500 border-2 border-yellow-500 hover:bg-white">Sauvegarder</button>
            <a href="/profil/{{ $profil[0]->util_id }}"
                class="py-3 px-5 bg-yellow-500 text-black font-bold rounded hover:text-yellow-500 border-2 border-yellow-500 hover:bg-white">Annuler</a>
        </div>

        <br>

        
    </form>
</div>


@endsection