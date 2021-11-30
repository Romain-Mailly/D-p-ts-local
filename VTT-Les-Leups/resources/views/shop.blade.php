@extends('layouts.base')

@section('content')

<div class="flex flex-wrap w-full flex-col items-center text-center">
    <h1
        class="text-yellow-500 title-font mb-2 text-4xl font-extrabold leading-10 tracking-tight text-left sm:text-5xl sm:leading-none md:text-6xl">
        Shop</h1>
    <p class="text-yellow-500 lg:w-1/2 w-full leading-relaxed text-base">
        Ci-dessous vous retrouverez les articles en vente par le club de VTT Les Leups.
    </p>
</div>


{{-- <section class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-4 py-12">
    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-3 gap-6">
@if (count($products) > 0)
        @foreach($products as $product)
       
            <div class="w-full bg-white rounded-lg shadow-lg p-12 flex flex-col justify-center items-center">
                <div class="mb-8">
                <a href="products/{{$product->pro_id }}">
                    <img class="object-center object-cover rounded h-50 w-50" src=" {{Storage::url('photos_cube/'. $product->pro_id.'.'.$product->pro_photo)}}" alt="photo">
                </a>
                </div>
                <div class="text-center">
                    <p class="text-xl text-gray-700 font-bold mb-2"><a href="products/{{$product->pro_id }}">{{ $product->pro_libelle }}</a></p>
                    <p class="text-base text-gray-400 font-normal">{{ $product->pro_prix }}</p>
                </div>
            </div>
    </div>
</section> --}}

<br><br>

<div class="text-center mt-20">
    <a href="{{ Route('commande') }}"
        class="py-3 px-8 bg-yellow-500 text-black font-bold rounded hover:text-yellow-500 border-2 border-yellow-500 hover:bg-white">Passer une commande</a>
</div>


<br>


@endsection