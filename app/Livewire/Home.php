<?php

namespace App\Livewire;

use Livewire\Component;

class Home extends Component
{
    public function render()
    {
        $products=\App\Models\Product::where('buy_many',1)->get();
        $productsCoi=\App\Models\Product::where('category_id',6)->get();
        $productsCanh=\App\Models\Product::where('category_id',7)->get();
        $services=\App\Models\Service::all();
        return view('livewire.home',compact('products','productsCoi','productsCanh','services'));
    }
}
