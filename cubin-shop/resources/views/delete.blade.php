@extends('layouts.header')

@section('content')


<img src="{{ Storage::url($url) }}" alt="Photo cube n°{{ $produit[0]->pro_id }}">


@endsection