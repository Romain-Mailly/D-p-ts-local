@extends('layouts.header')


@section('content')

<p class="text-3xl">Page de modification</p>

<br><hr><br>


<div class="text-center mx-auto w-full max-w-lg">
  <form class="bg-white shadow-md rounded px-8 pt-6 pb-8">

    <!-- ID -->
    <div class="mb-4">
      <label class="block text-gray-700 text-sm font-bold mb-2" for="id">
        ID :
      </label>
      <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="id" type="text" value="{{ $product[0]->pro_id }}" disabled>
    </div>

    <!-- CAT ID -->
    <div class="mb-4">
      <label class="block text-gray-700 text-sm font-bold mb-2" for="cat">
        CAT_ID :
      </label>
      <input class="hover:bg-blue-500 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="cat" type="text" value="{{ $product[0]->pro_cat_id }}">
    </div>

    <!-- FOU ID -->
    <div class="mb-4">
      <label class="block text-gray-700 text-sm font-bold mb-2" for="fou">
        FOU_ID :
      </label>
      <input class="hover:bg-green-500 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="fou" type="text" value="{{ $product[0]->pro_fou_id }}">
    </div>

    <!-- RÉFÉRENCE -->
    <div class="mb-4">
      <label class="block text-gray-700 text-sm font-bold mb-2" for="ref">
        Référence :
      </label>
      <input class="hover:bg-yellow-300 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="ref" type="text" value="{{ $product[0]->pro_ref }}">
    </div>

    <!-- LIBELLE -->
    <div class="mb-4">
      <label class="block text-gray-700 text-sm font-bold mb-2" for="libelle">
        Libellé :
      </label>
      <input class="hover:bg-yellow-500 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="libelle" type="text" value="{{ $product[0]->pro_libelle }}">
    </div>

    <!-- DESCRIPTION -->
    <div class="mb-4">
      <label class="block text-gray-700 text-sm font-bold mb-2" for="desc">
        Description :
      </label>
      <input class="hover:bg-red-500 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="desc" type="text" value="{{ $product[0]->pro_desc }}">
    </div>

    <!-- PRIX -->
    <div class="mb-4">
      <label class="block text-gray-700 text-sm font-bold mb-2" for="prix">
        Prix :
      </label>
      <input class="hover:bg-pink-500 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="prix" type="text" value="{{ $product[0]->pro_prix }}">
    </div>

    <!-- STOCK -->
    <div class="mb-4">
      <label class="block text-gray-700 text-sm font-bold mb-2" for="stock">
        Stock :
      </label>
      <input class="hover:bg-purple-500 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="stock" type="text" value="{{ $product[0]->pro_stock }}">
    </div>

    <!-- Couleur -->
    <div class="mb-4">
      <label class="block text-gray-700 text-sm font-bold mb-2" for="couleur">
        Couleur :
      </label>
      <input class="hover:bg-pink-800 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="couleur" type="text" value="{{ $product[0]->pro_couleur }}">
    </div>

    <!-- PHOTO -->
    <div class="mb-4">
      <label class="block text-gray-700 text-sm font-bold mb-2" for="photo">
        Photo :
      </label>
      <input class="hover:bg-gray-300 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="photo" type="text" value="{{ $product[0]->pro_photo }}">
    </div>

    <br>

    <div class="text-center">
      <a href="#" class="mr-4 bg-transparent hover:bg-yellow-500 text-yellow-500 font-semibold hover:text-white py-2 px-4 border border-yellow-500 hover:border-transparent rounded">Confirmer</a>
      <a href="/products/{{ $product[0]->pro_id }}" class="mr-4 bg-transparent hover:bg-red-500 text-red-500 font-semibold hover:text-white py-2 px-4 border border-red-500 hover:border-transparent rounded">Annuler</a>
    </div>

    </div>
  </form>






@endsection