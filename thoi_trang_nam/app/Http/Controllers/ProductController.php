<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class ProductController extends MenuController
{
    public function detail($id) {
    	$productDetail = Product::find($id);
    	$menu_parent = self::getMenus();
    	$productRelated = [];
    	if (!empty($productDetail)) {
    		$productDetail->update(['XLXem' => $productDetail->XLXem + 1]);

    		$productRelated = Product::where('id_DMSP', $productDetail->category_product_id)->take(5)->get();
    	}

        $infor = self::getInforShop();
    	return view('frontend/product_detail', compact('productDetail', 'menu_parent', 'infor', 'productRelated'));
    }
}
