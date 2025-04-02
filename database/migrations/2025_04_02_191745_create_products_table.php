<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id(); // Tạo trường id tự động tăng
            $table->foreignId('category_id')->constrained('product_categories')->onDelete('cascade'); // Khóa ngoại đến bảng categories
            $table->string('name'); // Tên sản phẩm
            $table->string('slug')->unique(); // Slug sản phẩm
            $table->decimal('min_price', 10, 2); // Giá tối thiểu
            $table->decimal('max_price', 10, 2); // Giá tối đa
            $table->text('short_desc'); // Mô tả ngắn
            $table->text('description'); // Mô tả chi tiết
            $table->string('image'); // Đường dẫn tới hình ảnh
            $table->boolean('is_featured')->default(false); // Nổi bật
            $table->boolean('is_latest')->default(false); // Mới nhất
            $table->boolean('is_discounted')->default(false); // Giảm giá
            $table->timestamps(); // Tạo các trường created_at và updated_at
        });
    }

    public function down()
    {
        Schema::dropIfExists('products');
    }
}