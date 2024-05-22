@extends('templates.base')
@section('content')
<div class="container mt-5">
    <div class="card bg-secondary bg-gradient text-white rounded-4">
       <div class="card-body text-center">
            <h1 class="display-4">Benvenuto!</h1>
            <h3 >Questa è la lista dei nostri prodotti</h3>
        
            <hr class="my-4">  
            <a class="btn btn-primary"  href="{{route('products.create')}}">Aggiungi un prodotto!</a>                        

       </div>
    </div>

    {{-- riprende  ->with('success', $product);  del controller} --}}
@session('success')
<div class="alert alert-success my-5" role="alert">
  {{ session('success')->name }} Eliminato con successo!
  </div>
@endsession
@session('update_success')
<div class="alert alert-success my-5" role="alert">
    <a href="{{route('products.show',['product'=>session('update_success')->id])}}">{{ session('update_success')->name }} Modificato con successo!
    </a> </div>
@endsession
@session('create_success')
<div class="alert alert-success my-5" role="alert">
  <a href="{{route('products.show',['product'=>session('create_success')->id])}}">{{ session('create_success')->name }} creato con successo!</a>
  </div>
@endsession
    <table class="table mt-4">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nome</th>
                <th scope="col">Descrizione</th>
                <th scope="col">Prezzo</th>
                <th scope="col">Foto</th>
                <th scope="col">Creato il</th>
                <th scope="col">Aggiornato il</th>
                <th scope="col"></th>
                <th scope="col"></th>
            </tr>
        </thead>
        <tbody>
            @if ($products->count())
                @foreach ($products as $product)   
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td><a href="{{route('products.show',['product'=>$product])}}">{{ $product->name }}</a></td>
                        <td>{{ $product->description }}</td>
                        <td>{{ $product->price }}</td>
                        <td><img src="{{ $product->photo }}" alt="{{ $product->name }}" width="50"></td>
                        <td>{{ $product->created_at }}</td>
                        <td>{{ $product->updated_at }}</td>
                       @auth
                            <td>@if (Auth::user()->id === $product->user_id)
                                <form action="{{ route('products.destroy',['product'=>$product]) }}" method="POST">
                                    @method('DELETE')
                                    @csrf
                                    <button class="btn btn-danger">Elimina</button>
                                </form>   
                            @endif
                                                       
                                            
                            </td>           
                          <td>
                            <td>
                                @if (Auth::user()->id === $product->user_id)
                                <a class="btn btn-primary"  href="{{route('products.edit',['product'=>$product])}}">Modifica</a>                        
                                @endif
                            </td>
                    @endauth
                      
                    </tr>
                @endforeach
            @else
                <tr>
                    <td colspan="7" class="text-center"><h3>Non ci sono libri</h3></td>
                </tr>
            @endif
        </tbody>
    </table>
 
        {{ $products->links('vendor.pagination.bootstrap-5') }}
</div>
@endsection
