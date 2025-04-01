<?php

use App\Livewire\Home;
use App\Livewire\Projects;
use App\Livewire\Project;
use Illuminate\Support\Facades\Route;

Route::get('/', Home::class);
Route::get('/du-an',Projects::class);
Route::get('/du-an/{slug}',Project::class);

