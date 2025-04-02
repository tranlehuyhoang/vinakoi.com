<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    use HasFactory;

    protected $table = 'news'; // Tên bảng

    protected $fillable = [
        'category_id', // Khóa ngoại đến bảng post_categories
        'slug',        // Slug tin tức
        'title',       // Tiêu đề tin tức
        'view',        // Số lượt xem
        'short_desc',  // Mô tả ngắn
        'description', // Mô tả chi tiết
        'banner',      // Đường dẫn tới banner
    ];

    public function category()
    {
        return $this->belongsTo(PostCategory::class);
    }
}