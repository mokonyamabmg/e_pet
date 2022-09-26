<?php

namespace App\Http\Controllers;

use App\Role;
use App\Rules\IdNumber;
use App\Rules\MatchOldPassword;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class HomeController extends Controller
{
    public function dashboard() {
        return view('dashboard');
    }

    public function authenticated_user() {
        $user = Auth::user();
        $role = Role::find($user->role_id);

        $user->role = $role->name;
    
        return response()->json($user, 200);
    }

    public function user_authenticated() {
        return response()->json(Auth::check(),201);
    }

    public function edit_profie() {
        
        $user = Auth::user();

        return view('profile')->with(['user' => $user]);
    }

    public function update_profile(Request $request)
    {
        $user = Auth::user();

        $request->validate([
            'name' => 'required',
            'surname' => 'required',
            'id_number' => ['required', new IdNumber],
            'email' => 'required|email|unique:users,email,'.$user->id, 
            'contact_number' => ['required', 'required', 'regex:/^((\+\d{1,3}(-| )?\(?\d\)?(-| )?\d{1,5})|(\(?\d{2,6}\)?))(-| )?(\d{3,4})(-| )?(\d{4})(( x| ext)\d{1,5}){0,1}$/'],
        ]);

        $user->id_number = $request->id_number;
        $user->name = $request->name;
        $user->surname = $request->surname;
        $user->contact_number = $request->contact_number;
        $user->email = $request->email;

        $user->save();


        return redirect()->route('dashboard');  
    }

    public function change_password() {

        return view('auth.change_password');
    }
    
    public function update_password(Request $request)
    {       
        $request->validate([
            'currentPassword' => ['required', new MatchOldPassword],
            'newPassword' => ['required'],
            'password_confirmation' => ['same:newPassword'],
        ]);


        User::find(auth()->user()->id)->update(['password'=> Hash::make($request->newPassword)]);

        return redirect()->back()->with('success', 'Password changed successfully');
    }
}
