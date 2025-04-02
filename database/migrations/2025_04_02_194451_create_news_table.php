<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNewsTable extends Migration
{
    public function up()
    {
        Schema::create('news', function (Blueprint $table) {
            $table->id(); // Tạo trường id tự động tăng
            $table->foreignId('category_id')->constrained('post_categories')->onDelete('cascade'); // Khóa ngoại đến bảng post_categories
            $table->string('slug')->unique(); // Slug tin tức
            $table->string('title'); // Tiêu đề tin tức
            $table->unsignedInteger('view')->default(0); // Số lượt xem
            $table->text('short_desc'); // Mô tả ngắn
            $table->text('description'); // Mô tả chi tiết
            $table->string('banner'); // Đường dẫn tới banner
            $table->timestamps(); // Tạo các trường created_at và updated_at
        });
    }

    public function down()
    {
        Schema::dropIfExists('news');
    }
}