<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;

    protected $table = 'services'; // Tên bảng

    protected $fillable = [
        'slug',        // Slug dịch vụ
        'title',       // Tiêu đề dịch vụ
        'view',        // Số lượt xem
        'short_desc',  // Mô tả ngắn
        'description', // Mô tả chi tiết
        'banner',      // Đường dẫn tới banner
    ];
}