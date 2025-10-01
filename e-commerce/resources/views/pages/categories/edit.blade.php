@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <h2>Edit Kategori</h2>

    <form action="{{ route('categories.update', $category->id) }}" method="POST">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label>Nama Kategori</label>
            <input type="text" name="name" value="{{ $category->name }}" class="form-control" required>
        </div>

        <button class="btn btn-success">Update</button>
        <a href="{{ route('categories.index') }}" class="btn btn-secondary">Kembali</a>
    </form>
</div>
@endsection
