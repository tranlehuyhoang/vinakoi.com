<?php

namespace App\Livewire;

use Illuminate\Support\Facades\DB;
use Livewire\Component;

class Home extends Component
{
    public function render()
    {
        $products=\App\Models\Product::where('buy_many',1)->get();
        $services=\App\Models\Service::all();
        $emptyCategories = DB::table('product_categories')
            ->leftJoin('products', 'product_categories.id', '=', 'products.category_id')
            ->select('product_categories.id as category_id', 'product_categories.name as category_name', 'products.*')
            ->whereNotNull('products.category_id') // Chỉ lấy những danh mục có sản phẩm
            ->get()
            ->groupBy('category_id'); // Nhóm theo category_id

        return view('livewire.home',compact('products','services','emptyCategories'));
    }
}
