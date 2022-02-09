<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use App\Models\ProductImage;
use App\Models\ProductTag;
use App\Models\Tag;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    private $product;
    public function __construct(Product $product)
    {
        $this->product = $product;
    }
    public function index(){
        $products = Product::latest()->paginate(8);
        $categorysLimit = Category::where('parent_id', 0)->take(3)->get();
        $categorys = Category::where('parent_id', 0)->get();
        return view('sanpham',compact('categorys','products','categorysLimit') );
    }
    public function productDetails($id){
        $product = $this->product->find($id);
        $categorysLimit = Category::where('parent_id', 0)->take(3)->get();
        $spImage = ProductImage::where('product_id', $id)->get();

//        dd($image_path);
        return view('chitiet', compact('product','spImage','categorysLimit'));
    }
}
