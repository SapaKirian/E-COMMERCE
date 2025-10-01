<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        return view('pages.dashboard.index', [
            'totalProducts' => Product::count(),
            'totalCategories' => Category::count(),
            'totalUsers' => User::count()
        ]);
    }
}
