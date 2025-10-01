<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use App\Models\Category;
use Illuminate\Support\Facades\Route;

Route::get("/", [DashboardController::class,"index"])->name("dashboard");
// Route::get('/', function () {
//     return view('template.app');
// });
// Menampilkan daftar produk
//Route::get('/', [ProductController::class, 'index'])->name('products.index');

// Menampilkan daftar kategori
Route::get('/categories', [CategoryController::class, 'index'])->name('categories.index');
Route::post('/products', [ProductController::class, 'store'])->name('products.store');
// Menampilkan daftar user
// Route::get('/users', [UseController::class, 'index'])->name('users.index');
Route::resource('categories', CategoryController::class);
Route::resource('users', UserController::class);
Route::resource('products', ProductController::class);
Route::resource('dashboard', DashboardController::class);