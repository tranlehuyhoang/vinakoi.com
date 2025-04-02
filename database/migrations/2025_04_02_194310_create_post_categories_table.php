<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostCategoriesTable extends Migration
{
    public function up()
    {
        Schema::create('post_categories', function (Blueprint $table) {
            $table->id(); // Tạo trường id tự động tăng
            $table->string('name')->unique(); // Tên danh mục
            $table->timestamps(); // Tạo các trường created_at và updated_at
        });
    }

    public function down()
    {
        Schema::dropIfExists('post_categories');
    }
}