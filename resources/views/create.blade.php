@extends('templates.base')
@section('content')
    <h1>Create Product</h1>
    
   <form method="POST" action="{{ route('products.store') }}">
        @csrf 
        <div class="mb-3">
            <label for="name" class="form-label">name</label>
            <input type="text" class="form-control" id="name" placeholder="name" name="name">
          </div>
          <div class="mb-3">
            <label for="description" class="form-label">description</label>
            <input type="text" class="form-control" id="description" placeholder="description" name="description">
          </div>
          <div class="mb-3">
            <label for="price" class="form-label">price</label>
            <input type="number" class="form-control" id="price" placeholder="price" name="price">
          </div>
          <div class="mb-3">
            <label for="photo" class="form-label">photo</label>
            <input type="text" class="form-control" id="photo" placeholder="photo" name="photo">
          </div>
          <div class="col-12">
            <button type="submit" class="btn btn-primary">Create</button>
          </div>
   </form>
    @endsection