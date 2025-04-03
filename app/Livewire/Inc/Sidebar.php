<?php

namespace App\Livewire\Inc;

use App\Models\News;
use Illuminate\Support\Facades\DB;
use Livewire\Component;


class Sidebar extends Component
{
    public function render()
    {
        $products=\App\Models\Product::where('is_latest',1)
            ->limit(6)
            ->orderBy('created_at','DESC')
            ->get();
        $blogs=News::limit(6)
            ->orderBy('created_at','DESC')
            ->get();

        $categories = DB::table('product_categories')
            ->leftJoin('products', 'product_categories.id', '=', 'products.category_id')
            ->select('product_categories.id', 'product_categories.name', DB::raw('COUNT(products.id) as product_count'))
            ->groupBy('product_categories.id', 'product_categories.name')
            ->get();
        return view('livewire.inc.sidebar',compact('products','blogs','categories'));
    }
}
