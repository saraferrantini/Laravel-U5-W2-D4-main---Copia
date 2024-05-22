@extends('templates.base')

@section('content')
    <h1>{{$product->name}}</h1>
   
    <h3>{{ $product->description }}</h3>
    <p>{{ $product->price }}</p>
    <p><img src="{{ $product->photo }}" alt="{{ $product->name }}" width="50"></p>
    <p>{{ $product->created_at }}</p>
    <p>{{ $product->updated_at }}</p>

    @endsection