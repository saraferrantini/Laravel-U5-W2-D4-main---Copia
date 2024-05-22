<?php

use App\Http\Controllers\ProductsController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard'); //rotte accessibili solo se si è loggati e verificati

Route::middleware('auth')->group(function () { //rotte accessibili solo se loggati
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::resource('products', ProductsController::class)->except(['index', 'show']);
});

Route::middleware('guest')->group(function () { //rotte accessibili anche se non loggati
});

//rotte risorse products
Route::resource('products', ProductsController::class)->only(['index', 'show']);

require __DIR__ . '/auth.php';
