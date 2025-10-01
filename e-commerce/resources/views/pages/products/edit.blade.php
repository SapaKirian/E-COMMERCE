@extends('layouts.app')

@section('content')
    <div class="container mt-4">
        <h2>Edit Produk</h2>

        <form action="{{ route('products.update', $product->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')

            <div class="mb-3">
                <label>Nama Produk</label>
                <input type="text" name="name" value="{{ $product->name }}" class="form-control" required>
            </div>

            <div class="mb-3">
                <label>Deskripsi</label>
                <textarea name="description" class="form-control" rows="3" required>{{ $product->description }}</textarea>
            </div>
            
            <div class="mb-3">
                <label>Harga</label>
                <input type="number" name="price" value="{{ $product->price }}" class="form-control" required>
            </div>

            <div class="mb-3">
                <label>Stok</label>
                <input type="number" name="quantity" value="{{ $product->quantity }}" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="category_id">Kategori</label>
                <select name="category_id" class="form-control" required>
                    <option value="">-- Pilih Kategori --</option>
                    @foreach ($categories as $category)
                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                    @endforeach
                </select>
            </div>


            <div class="mb-3">
                <label>Gambar Produk (biarkan kosong jika tidak ingin diubah)</label>
                <input type="file" name="image" class="form-control">

                @if ($product->image)
                    <div class="mt-2">
                        <img src="{{ asset('storage/' . $product->image) }}" width="100">
                    </div>
                @endif
            </div>

            <button class="btn btn-success">Update</button>
            <a href="{{ route('products.index') }}" class="btn btn-secondary">Kembali</a>
        </form>
    </div>
@endsection
