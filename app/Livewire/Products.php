<?php

namespace App\Livewire;

use Livewire\Component;

class Products extends Component
{

    public $category;  // Biến category để lưu giá trị từ URL

    public function mount()
    {
        // Lấy giá trị 'category' từ query string của URL
        $this->category = request('category');
    }

    public function render()
    {
        // Bắt đầu xây dựng query cơ bản
        $query = \App\Models\Product::query();

        // Kiểm tra nếu có category và lọc theo category
        if ($this->category) {
            $query->where('category_id', $this->category);
        }

        // Lấy sản phẩm theo phân trang
        $products = $query->paginate(12);

        // Trả về view với các sản phẩm đã được lọc
        return view('livewire.products', compact('products'));
    }
}
