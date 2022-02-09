<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function index(){
        $categorysLimit = Category::where('parent_id', 0)->take(3)->get();
        return view('giohang',compact('categorysLimit') );
    }
}
