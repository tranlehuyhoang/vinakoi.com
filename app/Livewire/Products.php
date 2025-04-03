<?php

namespace App\Livewire;

use Livewire\Component;

class Products extends Component
{
    public $page = 1;
    public function render()
    {
        $products=\App\Models\Product::paginate(12);

        return view('livewire.products',compact('products'));
    }
}
