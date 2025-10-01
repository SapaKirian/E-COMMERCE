@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <h2>Selamat Datang di Dashboard</h2>

    <div class="row mt-4">
        <div class="col-md-4">
            <div class="card text-white bg-primary mb-3">
                <div class="card-body">
                    <h5 class="card-title">Total Produk</h5>
                    <p class="card-text fs-4">{{ $totalProducts }}</p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card text-white bg-success mb-3">
                <div class="card-body">
                    <h5 class="card-title">Total Kategori</h5>
                    <p class="card-text fs-4">{{ $totalCategories }}</p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card text-white bg-warning mb-3">
                <div class="card-body">
                    <h5 class="card-title">Total User</h5>
                    <p class="card-text fs-4">{{ $totalUsers }}</p>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
