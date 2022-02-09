<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use App\Models\ProductImage;
use App\Models\Slider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{


    public function index(){

        $sliders = Slider::latest()->get();
        $categorysLimit = Category::where('parent_id', 0)->take(3)->get();
        return view('trangchu', compact('sliders', 'categorysLimit'));
    }
    public function home(){
        return view('trangchu');
    }

}
