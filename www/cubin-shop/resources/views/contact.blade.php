@extends('layouts.header')

@section('content')
<div class="pl-20">
<p class="text-4xl">Bienvenue dans la page de contact</p>


<br><hr><br>

<p class="text-2xl">Vos coordonnées</p>

<br>

    <form method="POST" action="#">
        @csrf

   
    
    {{-- NOM --}}
    <div class="md:flex md:items-center mb-6">
        <div>
            <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4" for="nom">
                Nom:
            </label>
        </div>
        <div>
            <input class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500" id="nom" name="nom" type="text" placeholder="Doe">
        </div>
    </div>
    
    <br>
    
    {{-- PRÉNOM --}}
    <div class="md:flex md:items-center mb-6">
        <div>
            <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4" for="prenom">
                Prénom:
            </label>
        </div>
        <div>
            <input class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500" id="prenom" name="prenom" type="text" placeholder="John">
        </div>
    </div>
    
    <br>
    
    {{-- SEXE --}}
    <div class="md:flex md:items-center mb-6">
        <span class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">Sexe: </span>
        <div class="mt-2">
          <div>
            <label class="inline-flex items-center">
              <input type="radio" class="form-radio" name="radio" value="1" checked>
              <span class="ml-2">Homme</span>
            </label>
          </div>
          <div>
            <label class="inline-flex items-center">
              <input type="radio" class="form-radio" name="radio" value="2">
              <span class="ml-2">Femme</span>
            </label>
          </div>
          <div>
            <label class="inline-flex items-center">
              <input type="radio" class="form-radio" name="radio" value="3">
              <span class="ml-2">Neutre</span>
            </label>
          </div>
        </div>
      </div>
    <br>
    
    {{-- DATE DE NAISSANCE --}}
      <div class="md:flex md:items-center mb-6">
          <div>
            <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4" for="ddn">
              Date de naissance:
            </label>
          </div>
          <div>
            <input class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500" id="ddn" name="ddn" type="date">
          </div>
        </div>
    
        <br>
    
    {{-- CODE POSTAL --}}
    <div class="md:flex md:items-center mb-6">
        <div>
          <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4" for="cp">
            Code Postal:
          </label>
        </div>
        <div>
          <input class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500" id="cp" name="cp" type="number" placeholder="80000">
        </div>
      </div>
  
  <br>

    {{-- Adresse --}}
    <div class="md:flex md:items-center mb-6">
        <div>
          <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4" for="adresse">
            Adresse:
          </label>
        </div>
        <div>
          <input class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500" id="adresse" name="adresse" type="text" placeholder="30 rue de Poulainville">
        </div>
      </div>

  <br>

    {{-- Ville --}}
    <div class="md:flex md:items-center mb-6">
        <div>
          <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4" for="ville">
            Ville:
          </label>
        </div>
        <div>
          <input class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500" id="ville" name="ville" type="text" placeholder="Amiens">
        </div>
      </div>
  
  <br>

  {{-- Email --}}
  <div class="md:flex md:items-center mb-6">
      <div>
        <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4" for="email">
          Email:
        </label>
      </div>
      <div>
        <input class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500" id="email" name="email" type="email" placeholder="john.doe@afpa.fr" required>
      </div>
    </div>

<hr>

<br>

<p class="text-2xl">Votre demande</p>

<br>

<div class="inline-block relative w-64 md:flex md:items-center mb-6">
    <div>
        <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4" for="sujet">
          Sujet:
        </label>
      </div>
    <select class="block appearance-none w-full bg-gray-200 border-2 border-gray-200 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
      <option disabled selected>Veuillez sélectionnez un sujet</option>
      <option>Mes commandes</option>
      <option>Question sur un produit</option>
      <option>Autres</option>
    </select>
    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
      <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
    </div>
  </div>

  <br>

 {{-- Email --}}
  <div class="md:flex md:items-center mb-6">
      <div>
        <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4" for="email">
          Votre question:
        </label>
      </div>
      <div>
        <textarea class="resize border rounded-md"></textarea>      </div>
    </div>

    <hr><br>

    <button type="submit" class="bg-green-500 border text-white hover:bg-white hover:border-2 hover:border-2 hover:border-green-500 hover:text-green-500 font-bold py-2 px-4 rounded-full">
      Envoyer
    </button>

    <button type="reset" class="bg-red-500 border text-white hover:bg-white hover:border-2 hover:border-2 hover:border-red-500 hover:text-red-500 font-bold py-2 px-4 rounded-full">
      Annuler
    </button>

    <br><br>

    </form>
</div>
    @endsection