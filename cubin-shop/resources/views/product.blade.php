@extends('layouts.header')

@section('content')

<p class="text-5xl">Détail du {{ $product[0]->pro_libelle }}</p>

<br><hr><br>

<div class="display: flex justify-around items-center">


    <div class="float-left">
        <p class="text-4xl text-blue-500">Nom : {{$product[0]->pro_libelle}}</p>
        <br>
        <p class="text-3xl text-gray-500">Type : {{$product[0]->pro_desc}}</p>
        <br>
        <p class="text-2xl text-green-500">Prix : {{$product[0]->pro_prix}}€</p>
        <br><br><br>
        <p class="text-2xl text-yellow-600">Référence : {{$product[0]->pro_ref}}</p>
        <p>{{$product[0]->pro_couleur}}</p>
        <br>

        <div class="flex">

            <div class="flex">
                <a href="{{ Route('modif',['idd' => $product[0]->pro_id ]) }}" class="mr-4 bg-transparent hover:bg-yellow-300 text-yellow-300 font-semibold hover:text-white py-2 px-4 border border-yellow-300 hover:border-transparent rounded">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24"
                        stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z" />
                    </svg>Modifier
                </a>
            </div>

            <div class="flex">
                <a href="{{ Route('delete', ['iddd' => $product[0]->pro_id]) }}"
                    class="bg-transparent hover:bg-red-500 text-red-700 font-semibold hover:text-white py-2 px-4 border border-red-500 hover:border-transparent rounded">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24"
                        stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                    </svg> Supprimer
                </a>
            </div>

        </div>

    </div>



    <img height="600" width="600" src="{{ Storage::url($url) }}" alt="Cube n°{{ $product[0]->pro_id }}">

</div>

<br>





@endsection
