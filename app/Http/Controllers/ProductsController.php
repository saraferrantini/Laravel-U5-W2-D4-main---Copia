<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProductsController extends Controller
{
    public function index()
    {

        $products = Product::paginate(4);
        // dd($product);
        // App\Model\Product stessa cosa di Product

        return view('index', ['products' => $products]);
    }
    public function store(Request $request)

    { //creazione prodotto
        $product = new Product();
        $product->name = $request->name;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->user_id = $request->user()->id;
        $product->save();
        //e ridirezionare 
        return redirect()->route('products.store')->with('create_success', $product);
    }

    public function create(Request $request)
    {
        // if (Auth::check()) abort(401); 
        return view('create');
    }

    public function show($id)
    {

        $product = Product::find($id);
        return view('show', ['product' => $product]);
    }

    public function edit(Request $request, $id)
    {
        $product = Product::findOrFail($id);
        if ($request->user()->id !== $product->user_id) abort(401);

        // Se il prodotto non esiste, mostra un errore 404
        if (!$product) {
            abort(404, 'Prodotto non trovato');
        }

        return view('edit', compact('product'));
    }


    public function update(Request $request, $id)
    {
        //validazione campi
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'required|string',
            'price' => 'required|numeric',
            'photo' => 'nullable|image|max:2048'
        ]);
        //trovo il prodotto da modificare 
        $product = Product::find($id);
        if ($request->user()->id !== $product->user_id) abort(401);

        $product->name = $request->name;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->save();

        return redirect()->route('products.index')->with('update_success', $product);
    }

    public function destroy(Product $product)
    {
        //elimina
        $product->delete();
        return redirect()->route('products.index')->with('success', $product);
    }
}
