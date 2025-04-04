<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductSearchController extends Controller
{
    public function getResults(Request $request)
    {
        // Lấy giá trị tìm kiếm từ request
        $searchTerm = $request->input('search');

        // Tìm kiếm sản phẩm theo tên và mô tả
        $products = Product::query()
            ->where('name', 'like', '%' . $searchTerm . '%')
            ->get();

        // Trả về dữ liệu dưới dạng JSON
        return response()->json($products);
    }
}
