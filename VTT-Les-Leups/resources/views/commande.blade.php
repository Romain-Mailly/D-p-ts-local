@extends('layouts.base')


@section('content')


<br><br>

<p class="text-2xl">Fiche d'article</p>

<div class="md:px-32 py-8 w-full">
    <div class="shadow overflow-hidden rounded border-b border-gray-200">
      <table class="min-w-full bg-white border border-orange-500">
        <thead class="bg-yellow-500 text-white">
          <tr>
            <th class="border-r border-white w-1/3 text-left py-3 px-4 uppercase font-semibold text-sm">Référence</th>
            <th class="border-r border-white w-1/3 text-left py-3 px-4 uppercase font-semibold text-sm"></th>
            <th class="text-left py-3 px-4 uppercase font-semibold text-sm">HC-2020</th>
          </tr>
        </thead>
      <tbody class="text-gray-700">
        <tr>
          <td class="w-1/3 text-left py-3 px-4">Type</td>
          <td class="w-1/3 text-left py-3 px-4"></td>
          <td class="text-left py-3 px-4"></td>
        </tr>
        <tr class="bg-gray-300">
          <td class="w-1/3 text-left py-3 px-4">Fournisseur</td>
          <td class="w-1/3 text-left py-3 px-4"></td>
          <td class="text-left py-3 px-4"></td>
        </tr>
        <tr>
          <td class="w-1/3 text-left py-3 px-4">Design version</td>
          <td class="w-1/3 text-left py-3 px-4">année</td>
          <td class="text-left py-3 px-4"></td>
        </tr>
        <tr class="bg-gray-300">
          <td class="w-1/3 text-left py-3 px-4">Prix achat</td>
          <td class="w-1/3 text-left py-3 px-4">€</td>
          <td class="text-left py-3 px-4"></td>
        </tr>
        <tr>
          <td class="w-1/3 text-left py-3 px-4">Prix vente</td>
          <td class="w-1/3 text-left py-3 px-4">€</td>
          <td class="text-left py-3 px-4"></td>
        </tr>
        <tr class="bg-gray-300">
          <td class="w-1/3 text-left py-3 px-4">Date commande</td>
          <td class="w-1/3 text-left py-3 px-4"></td>
          <td class="text-left py-3 px-4"></td>
        </tr>
      </tbody>
      </table>
    </div>
  </div>

<br><br>

  <p class="text-2xl">Guide des tailles</p>

  <div class="md:px-32 py-8 w-full">
      <div class="shadow overflow-hidden rounded border-b border-gray-200">
        <table class="min-w-full bg-white border border-orange-500">
          <thead class="bg-yellow-500 text-white">
            <tr>
              <th class="border-r border-white text-left py-3 px-4 uppercase font-semibold text-sm">Tailles</th>
              <th class="border-r border-white text-left py-3 px-4 uppercase font-semibold text-sm">XS</th>
              <th class="border-r border-white text-left py-3 px-4 uppercase font-semibold text-sm">S</th>
              <th class="border-r border-white text-left py-3 px-4 uppercase font-semibold text-sm">M</th>
              <th class="border-r border-white text-left py-3 px-4 uppercase font-semibold text-sm">L</th>
              <th class="border-r border-white text-left py-3 px-4 uppercase font-semibold text-sm">XL</th>
              <th class="border-r border-white text-left py-3 px-4 uppercase font-semibold text-sm">XXL</th>
              <th class="border-r border-white text-left py-3 px-4 uppercase font-semibold text-sm">3XL</th>
              <th class="border-r border-white text-left py-3 px-4 uppercase font-semibold text-sm">4XL</th>
            </tr>
          </thead>
        <tbody class="text-gray-700">
          <tr>
            <td class="text-left py-3 px-4">Quantité</td>
            <td class="text-left py-3 px-4"></td>
            <td class="text-left py-3 px-4"></td>
            <td class="text-left py-3 px-4"></td>
            <td class="text-left py-3 px-4"></td>
            <td class="text-left py-3 px-4"></td>
            <td class="text-left py-3 px-4"></td>
            <td class="text-left py-3 px-4"></td>
            <td class="text-left py-3 px-4"></td>
          </tr>
        </tbody>
        </table>
      </div>
    </div>

<br><br>

    <p class="text-2xl">Guide des tailles #2</p>

    <div class="md:px-32 py-8 w-full">
        <div class="shadow overflow-hidden rounded border-b border-gray-200">
          <table class="min-w-full bg-white border border-orange-500">
            <thead class="bg-yellow-500 text-white">
              <tr>
                <td class="border-r border-white w-1/3 text-left py-3 px-4 uppercase font-semibold text-sm">Article</th>
                <td class="border-r border-white w-1/3 text-left py-3 px-4 uppercase font-semibold text-sm">Abréviation</th>
              </tr>
            </thead>
          <tbody class="text-gray-700">
            <tr class="bg-gray-300">
              <td class="w-1/3 text-left py-3 px-4">Haut court</td>
              <td class="w-1/3 text-left py-3 px-4">HC</td>
            </tr>
            <tr>
              <td class="w-1/3 text-left py-3 px-4">Haut long</td>
              <td class="w-1/3 text-left py-3 px-4">HL</td>
            </tr>
            <tr class="bg-gray-300">
              <td class="w-1/3 text-left py-3 px-4">Haut thermique</td>
              <td class="w-1/3 text-left py-3 px-4">HT</td>
            </tr>
            <tr>
              <td class="w-1/3 text-left py-3 px-4">Bas court</td>
              <td class="w-1/3 text-left py-3 px-4">BC</td>
            </tr>
            <tr class="bg-gray-300">
              <td class="w-1/3 text-left py-3 px-4">Bas long</td>
              <td class="w-1/3 text-left py-3 px-4">BL</td>
            </tr>
            <tr>
              <td class="w-1/3 text-left py-3 px-4">Bonnet</td>
              <td class="w-1/3 text-left py-3 px-4">BT</td>
            </tr>
            <tr class="bg-gray-300">
              <td class="w-1/3 text-left py-3 px-4">Casquette</td>
              <td class="w-1/3 text-left py-3 px-4">CS</td>
            </tr>
            <tr>
              <td class="w-1/3 text-left py-3 px-4">T-shirt</td>
              <td class="w-1/3 text-left py-3 px-4">TS</td>
            </tr>
            <tr class="bg-gray-300">
              <td class="w-1/3 text-left py-3 px-4">Chaussette</td>
              <td class="w-1/3 text-left py-3 px-4">CH</td>
            </tr>
            <tr>
              <td class="w-1/3 text-left py-3 px-4"></td>
              <td class="w-1/3 text-left py-3 px-4"></td>
            </tr>
            <tr>
              <td class="w-1/3 text-left py-3 px-4"></td>
              <td class="w-1/3 text-left py-3 px-4"></td>
            </tr>
          </tbody>
          </table>
        </div>
      </div>

<br><br>


<p class="text-2xl">Fiche activités</p>



<div class="md:px-32 py-8 w-full">
    <div class="shadow overflow-hidden rounded border-b border-gray-200">
      <table class="min-w-full bg-white border border-orange-500">
        <thead class="bg-yellow-500 text-white">
          <tr>
            <th class="border-r border-white w-1/3 text-left py-3 px-4 uppercase font-semibold text-sm">Date d'inscription</th>
            <th class="border-r border-white w-1/3 text-left py-3 px-4 uppercase font-semibold text-sm">Membre</th>
            <th class="text-left py-3 px-4 uppercase font-semibold text-sm">Inscription €</th>
          </tr>
        </thead>
      <tbody class="text-gray-700">
        <tr>
          <td class="w-1/3 text-left py-3 px-4"></td>
          <td class="w-1/3 text-left py-3 px-4"></td>
          <td class="text-left py-3 px-4"></td>
        </tr>
        <tr class="bg-gray-300">
          <td class="w-1/3 text-left py-3 px-4"></td>
          <td class="w-1/3 text-left py-3 px-4"></td>
          <td class="text-left py-3 px-4"></td>
        </tr>
        <tr>
          <td class="w-1/3 text-left py-3 px-4"></td>
          <td class="w-1/3 text-left py-3 px-4"></td>
          <td class="text-left py-3 px-4"></td>
        </tr>
        <tr class="bg-gray-300">
          <td class="w-1/3 text-left py-3 px-4"></td>
          <td class="w-1/3 text-left py-3 px-4"></td>
          <td class="text-left py-3 px-4"></td>
        </tr>
        <tr>
          <td class="w-1/3 text-left py-3 px-4"></td>
          <td class="w-1/3 text-left py-3 px-4"></td>
          <td class="text-left py-3 px-4"></td>
        </tr>
        <tr class="bg-gray-300">
          <td class="w-1/3 text-left py-3 px-4"></td>
          <td class="w-1/3 text-left py-3 px-4"></td>
          <td class="text-left py-3 px-4"></td>
        </tr>
      </tbody>
      </table>
    </div>
  </div>


  <br><br>


  <p class="text-2xl">Tableau d'inscription</p>
  
  
  
  <div class="md:px-32 py-8 w-full">
      <div class="shadow overflow-hidden rounded border-b border-gray-200">
        <table class="min-w-full bg-white border border-orange-500">
          <thead class="bg-yellow-500 text-white">
            <tr>
              <th class="border-r border-white text-left py-3 px-4 uppercase font-semibold text-sm">Saison</th>
              <th class="border-r border-white text-left py-3 px-4 uppercase font-semibold text-sm">Date</th>
              <th class="border-r border-white text-left py-3 px-4 uppercase font-semibold text-sm">Cotisation</th>
              <th class="border-r border-white text-left py-3 px-4 uppercase font-semibold text-sm">Moyen<th>
              <th class="border-r border-white text-left py-3 px-4 uppercase font-semibold text-sm">Fonction</th>
            </tr>
          </thead>
        <tbody class="text-gray-700">
          <tr>
            <td class="text-left py-3 px-4">2021/2022</td>
            <td class="text-left py-3 px-4"></td>
            <td class="text-left py-3 px-4"></td>
            <td class="text-left py-3 px-4"></td>
            <td class="text-left py-3 px-4"></td>
          </tr>
          <tr class="bg-gray-300">
            <td class="text-left py-3 px-4">2022/2023</td>
            <td class="text-left py-3 px-4"></td>
            <td class="text-left py-3 px-4"></td>
            <td class="text-left py-3 px-4"></td>
            <td class="text-left py-3 px-4"></td>
          </tr>
          <tr>
            <td class="text-left py-3 px-4">2023/2024</td>
            <td class="text-left py-3 px-4"></td>
            <td class="text-left py-3 px-4"></td>
            <td class="text-left py-3 px-4"></td>
            <td class="text-left py-3 px-4"></td>
          </tr>
        </tbody>
        </table>
      </div>
    </div>





@endsection