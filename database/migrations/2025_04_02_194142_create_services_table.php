<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateServicesTable extends Migration
{
    public function up()
    {
        Schema::create('services', function (Blueprint $table) {
            $table->id(); // Tạo trường id tự động tăng
            $table->string('slug')->unique(); // Slug dịch vụ
            $table->string('title'); // Tiêu đề dịch vụ
            $table->unsignedInteger('view')->default(0); // Số lượt xem
            $table->text('short_desc'); // Mô tả ngắn
            $table->text('description'); // Mô tả chi tiết
            $table->string('banner'); // Đường dẫn tới banner
            $table->timestamps(); // Tạo các trường created_at và updated_at
        });
    }

    public function down()
    {
        Schema::dropIfExists('services');
    }
}