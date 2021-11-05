@extends('layouts.base')

@section('content')

<p class="text-4xl">Inscription</p>

<br>

<!-- component -->

    <!--   tip; mx-auto -- jagab ilusti keskele  -->
    <div class="bg-white p-10 md:w-3/4 lg:w-1/2 mx-auto">
  
      <form action="">
  
        <!--       flex - asjad korvuti, nb! flex-1 - element kogu ylejaanud laius -->
        <div class="flex items-center mb-5">
          <!--         tip - here neede inline-block , but why? -->
          <label for="nom" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Nom</label>
          <input type="text" id="nom" name="nom" placeholder="Doe" 
                 class="flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-gray-600 placeholder-gray-400
                        outline-none">
        </div>
  
        <div class="flex items-center mb-5">
          <!--         tip - here neede inline-block , but why? -->
          <label for="prenom" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Prénom</label>
          <input type="text" id="prenom" name="prenom" placeholder="John" 
                 class="flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-gray-600 placeholder-gray-400
                        outline-none">
        </div>
  
        <div class="flex items-center mb-5">
          <!--         tip - here neede inline-block , but why? -->
          <label for="ddn" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Date de naissance</label>
          <input type="date" id="ddn" name="ddn" placeholder="date" 
                 class="flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-gray-600 placeholder-gray-400
                        outline-none">
        </div>
  
        <div class="flex items-center mb-5">
          <!--         tip - here neede inline-block , but why? -->
          <label for="id" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Identifiant</label>
          <input type="text" id="id" name="id" placeholder="John_Doe" 
                 class="flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-gray-600 placeholder-gray-400
                        outline-none">
        </div>
  
        <div class="flex items-center mb-5">
          <!--         tip - here neede inline-block , but why? -->
          <label for="mdp" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Mot de passe</label>
          <input type="password" id="mdp" name="mdp" placeholder="**********" 
                 class="flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-gray-600 placeholder-gray-400
                        outline-none">
        </div>
  
        <div class="text-right">
          <button type="submit" class="py-3 px-8 bg-yellow-600 text-white font-bold rounded hover:text-yellow-600 border-2 border-yellow-600 hover:bg-white">S'inscrire</button> 
        </div>

        <br>

        <span>Si vous avez deja un compte, <a href="#" class="underline text-yellow-600">cliquez ici pour vous connecter.</a></span>
      </form>
    </div>


@endsection