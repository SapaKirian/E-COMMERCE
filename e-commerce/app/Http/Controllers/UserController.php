<?php

namespace App\Http\Controllers;
use App\Models\User;
use Hash;
use Illuminate\Http\Request;

class UserController extends Controller
{
     public function index()
    {
        $users = User::all();
        return view('pages.users.index', compact('users'));
    }

    // Tampilkan form tambah user
    public function create()
    {
        return view('pages.users.create');
    }

    // Simpan user baru
    public function store(Request $request)
    {
        $request->validate([
            'name'     => 'required|string|max:255',
            'email'    => 'required|email|unique:users,email',
            'password' => 'required|min:6',
        ]);

        User::create([
            'name'     => $request->name,
            'email'    => $request->email,
            'password' => Hash::make($request->password),
        ]);

        return redirect()->route('users.index')->with('success', 'User berhasil ditambahkan.');
    }

    // Tampilkan detail user
    public function show($id)
    {
        $user = User::findOrFail($id);
        return view('users.show', compact('user'));
    }

    // Tampilkan form edit user
    public function edit($id)
    {
        $user = User::findOrFail($id);
        return view('.pages.users.edit', compact('user'));
    }

    // Update data user
    public function update(Request $request, $id)
    {
        $user = User::findOrFail($id);

        $request->validate([
            'name'  => 'required|string|max:255',
            'email' => 'required|email|unique:users,email,' . $user->id,
        ]);

        $user->update([
            'name'  => $request->name,
            'email' => $request->email,
        ]);

        return redirect()->route('users.index')->with('success', 'User berhasil diupdate.');
    }

    // Hapus user
    public function destroy($id)
    {
        $user = User::findOrFail($id);
        $user->delete();

        return redirect()->route('users.index')->with('success', 'User berhasil dihapus.');
    }
}
