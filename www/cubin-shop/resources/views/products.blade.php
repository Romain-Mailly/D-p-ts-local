@extends('layouts.header')

@section('content')


<p class="text-4xl">Liste des produits</p>

<br>












<section class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-4 py-12">
    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-3 gap-6">
@if (count($pros) > 0)
        @foreach($pros as $product)
        
       
            <div class="w-full bg-white rounded-lg sahdow-lg p-12 flex flex-col justify-center items-center">
                <div class="mb-8">
                <a href="products/{{$product->pro_id }}">
                    <img class="object-center object-cover rounded-full h-36 w-36" src=" {{Storage::url('photos_cube/'. $product->pro_id.'.'.$product->pro_photo)}}" alt="photo">
                </a>
                </div>
                <div class="text-center">
                    <p class="text-xl text-gray-700 font-bold mb-2"><a href="products/{{$product->pro_id }}">{{ $product->pro_libelle }}</a></p>
                    <p class="text-base text-gray-400 font-normal">{{ $product->pro_prix }}</p>
                </div>
            </div>
            
            
            
            @endforeach
        </div>
    </section>
        @else
        <span>Aucun post en base de données</span>
    @endif




@endsection