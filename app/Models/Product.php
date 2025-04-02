<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $table = 'products'; // Tên bảng

    protected $fillable = [
        'category_id', // Khóa ngoại đến bảng categories
        'name',        // Tên sản phẩm
        'slug',        // Slug sản phẩm
        'min_price',   // Giá tối thiểu
        'max_price',   // Giá tối đa
        'short_desc',  // Mô tả ngắn
        'description', // Mô tả chi tiết
        'image',       // Đường dẫn tới hình ảnh
        'is_featured', // Nổi bật
        'is_latest',   // Mới nhất
        'is_discounted' // Giảm giá
    ];

    public function category()
    {
        return $this->belongsTo(ProductCategory::class);
    }
}