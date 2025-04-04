<?php

namespace App\Livewire;

use App\Models\ProductCategory;
use Livewire\Component;

class Products extends Component
{

    public $category;  // Biến category để lưu giá trị từ URL
    public $search;

    public function mount()
    {
        // Lấy giá trị 'category' từ query string của URL
        $this->category = request('category');
        $this->search = request('search');
    }

    public function render()
    {
        // Bắt đầu xây dựng query cơ bản
        $query = \App\Models\Product::query();
        $product_category=ProductCategory::find($this->category);

        // Kiểm tra nếu có category và lọc theo category
        if ($this->category) {
            $query->where('category_id', $this->category);
        }
        if($this->search){
            $query->where('name', 'like', '%' . $this->search . '%');
        }

        // Lấy sản phẩm theo phân trang
        $products = $query->paginate(12);

        // Trả về view với các sản phẩm đã được lọc
        return view('livewire.products', compact('products', 'product_category'));
    }
}
