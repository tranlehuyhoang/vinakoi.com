<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductCategoriesTable extends Migration
{
    public function up()
    {
        Schema::create('product_categories', function (Blueprint $table) {
            $table->id(); // Tạo trường id tự động tăng
            $table->string('name'); // Tạo trường name kiểu chuỗi
            $table->timestamps(); // Tạo các trường created_at và updated_at
        });
    }

    public function down()
    {
        Schema::dropIfExists('product_categories');
    }
}