<?php

namespace App\Http\Controllers;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::with('category')->get();
        return view('pages.products.index', compact('products'));
    }
    public function viewProduct($id)
    {
        $product = Product::with('Category')->where('id', $id)->first();
        if (empty($product)) {
            return response([
                'status' => 'error',
                'message' => 'Produk tidak ditemukan'
            ], 404);
        }
        return response([
            'status' => 'success',
            'product' => $product
        ]);
    }
    public function create()
    {
        $categories = Category::all(); // Kalau kamu ingin user pilih kategori
        return view('pages.products.create', compact('categories'));
    }
    public function show($id)
    {
        $product = Product::with('category')->findOrFail($id);
        return view('products.show', compact('product'));
    }
    public function store(Request $request)
    {
        // Validasi data
        $validatedData = $request->validate([
            'name' => 'required',
            'description' => 'required',
            'price' => 'required|numeric',
            'quantity' => 'required|integer',
            'category_id' => 'required',
            'image' => 'image|nullable',
        ]);

        // Simpan produk ke database
        Product::create($validatedData);

        // Redirect ke halaman daftar produk
        return redirect()->route('products.index')->with('success', 'Produk berhasil ditambahkan!');
    }
    public function edit($id)
    {
        $product = Product::findOrFail($id);
        $categories = Category::all(); // Jika kategori diperlukan dalam form
        return view('pages.products.edit', compact('product', 'categories'));
    }
    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'name' => 'required',
            'description' => 'required',
            'price' => 'required|numeric',
            'quantity' => 'required|integer',
            'category_id' => 'required',
            'image' => 'image|nullable',
        ]);

        $product = Product::findOrFail($id);
        $product->update($validatedData);

        return redirect()->route('products.index')->with('success', 'Produk berhasil diperbarui!');
    }
    public function destroy($id)
    {
        $product = Product::findOrFail($id);
        $product->delete();

        return redirect()->route('products.index')->with('success', 'Produk berhasil dihapus!');
    }
}
