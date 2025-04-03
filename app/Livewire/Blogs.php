<?php

namespace App\Livewire;

use App\Models\News;
use Livewire\Component;

class Blogs extends Component
{
    public function render()
    {
        $blogs=News::paginate(10);
        return view('livewire.blogs',compact('blogs'));
    }
}
