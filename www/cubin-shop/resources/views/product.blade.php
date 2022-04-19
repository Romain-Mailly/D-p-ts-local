@extends('layouts.header')

@section('content')

<img src="{{ Storage::url($url) }}" alt="blbl">
 <p>{{$product[0]->pro_id}}</p>

<br>





@endsection