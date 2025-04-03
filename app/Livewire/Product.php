<?php

namespace App\Livewire;

use Livewire\Component;

class Product extends Component
{
    public $slug;

    public function mount($slug)
    {
        // Accept the slug from the URL parameter
        $this->slug = $slug;
    }
    public function render()
    {
        $product = \App\Models\Product::where('slug', $this->slug)->first();
        $otherProducts = \App\Models\Product::where('category_id', $product->category_id)
            ->where('category_id', '!=', $product->category_id)
            ->get();
        $otherNews = \App\Models\News::where('category_id', $product->category_id)
            ->get();
        return view('livewire.product', compact('product','otherProducts','otherNews'));
    }
}
