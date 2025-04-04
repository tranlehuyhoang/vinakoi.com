<?php

namespace App\Livewire\Inc;

use Livewire\Component;
use App\Models\Product;

class Header extends Component
{
    public $search = ''; // Thuộc tính để lưu giá trị tìm kiếm
    public $products = [];
    // Phương thức để lấy kết quả tìm kiếm từ database
    public function getResults()
    {
        // Kiểm tra search
        $products = Product::query()
            ->where('name', 'like', '%' . $this->search . '%') // Tìm theo tên sản phẩm
            ->orWhere('description', 'like', '%' . $this->search . '%') // Tìm theo mô tả
            ->take(5) // Lấy tối đa 5 kết quả
            ->get();
        return view('livewire.products', [
            'products' => $products, // Truyền kết quả tìm kiếm vào view
        ]);
    }
    // Render view
    public function render()
    {

        return view('livewire.inc.header');
    }
}


