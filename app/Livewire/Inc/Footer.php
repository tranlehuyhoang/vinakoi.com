<?php

namespace App\Livewire\Inc;

use Livewire\Component;

class Footer extends Component
{
    public function render()
    {
        $products=\App\Models\Product::where('is_latest',1)
            ->limit(6)
            ->orderBy('created_at','DESC')
            ->get();
        $products_muanhieu=\App\Models\Product::where('buy_many',1)
            ->limit(6)
            ->orderBy('created_at','DESC')
            ->get();
        $products_noibat=\App\Models\Product::where('is_featured',1)
            ->limit(6)
            ->orderBy('created_at','DESC')
            ->get();
        $products_giamgia=\App\Models\Product::where('is_discounted',1)
            ->limit(6)
            ->orderBy('created_at','DESC')
            ->get();
        return view('livewire.inc.footer',compact('products','products_muanhieu','products_noibat','products_giamgia'));
    }
}
