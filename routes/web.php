<?php

use App\Livewire\Blogs;
use App\Livewire\Contact;
use App\Livewire\Home;
use App\Livewire\Products;
use App\Livewire\Service;
use App\Livewire\Services;
use App\Models\User;
use Illuminate\Support\Facades\Route;
use App\Livewire\Blog;
use App\Livewire\Product;

Route::get('/', Home::class);
Route::get('/products', Products::class);
Route::get('/product/{slug}', Product::class);

Route::get('/services', Services::class);
Route::get('/service/{slug}', Service::class);

Route::get('/blogs', Blogs::class);
Route::get('/blog/{slug}', Blog::class);

Route::get('/contact', Contact::class);


