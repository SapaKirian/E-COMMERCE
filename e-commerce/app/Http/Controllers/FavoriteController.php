<?php

namespace App\Http\Controllers;
use App\Models\Favorite;
use Illuminate\Http\Request;

class favoriteController extends Controller
{

    public function index(Request $request)
    {
        try {
        $user = $request->user(); // user yang login via sanctum
        $favorites = $user->favorites()->with('category')->get();

        return response()->json([
            'status' => 'success',
            'favorites' => $favorites
        ]);
    } catch (\Exception $e) {
        return response()->json([
            'status' => 'error',
            'message' => $e->getMessage()
        ], 500);
    }
    }

    public function addToFavorite($product_id)
    {
        try {
            $check_favorite = Favorite::where('user_id', auth()->id())->where('product_id', $product_id)->first();
            if ($check_favorite) {
                Favorite::where('user_id', auth()->id())->where('product_id', $product_id)->delete();
                return response([
                    'status' => 'success',
                    'message' => 'Product Telah Dihapus Dari Favorite'
                ]);
            }
            $favorite = Favorite::create([
                'user_id' => auth()->id(),
                'product_id' => $product_id
            ]);
            return response([
                'status' => 'success',
                'favorite' => $favorite
            ]);
        } catch (\Exception $e) {
            return response([
                'status' => 'error',
                'message' => $e->getMessage()
            ], 500);
        }
    }
    public function ambil(Request $request)
    {
        return $request->user()->favorites()->get();
    }

    public function store(Request $request)
    {
        $request->user()->favorites()->attach($request->product_id);
        return response()->json(['message' => 'Added to favorites']);
    }

    public function destroy(Request $request, $product_id)
    {
        $request->user()->favorites()->detach($product_id);
        return response()->json(['message' => 'Removed from favorites']);
    }
    public function data(Request $request)
    {
        // Ambil user yang sedang login
        $user = $request->user();

        // Ambil produk favorit dari relasi belongsToMany
        $favorites = $user->favorites()->with('product.category')->get();

        // Kembalikan dalam bentuk JSON
        return response()->json([
            'status' => 'success',
            'data' => $favorites
        ]);
    }
}

