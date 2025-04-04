<?php

namespace App\Livewire;

use App\Models\News;
use Livewire\Component;

class Blog extends Component
{
    public $slug;

    public function mount($slug)
    {
        // Accept the slug from the URL parameter
        $this->slug = $slug;
    }
    public function render()
    {
        $news = News::where('slug', $this->slug)->first();
        if (!$news) {
            return redirect()->back()->with('error', 'Bài viết không tồn tại');
        }
        $news->view = $news->view + 1;
        $news->save();
        $blog = \App\Models\News::select('news.*', 'post_categories.name as category_name')
            ->leftJoin('post_categories', 'news.category_id', '=', 'post_categories.id')
            ->where('news.slug', $this->slug)
            ->first();
        $otherBlogs = \App\Models\News::where('slug', '!=', $this->slug)
            ->limit(6)
            ->get();
        return view('livewire.blog', compact('blog', 'otherBlogs'));
    }
}
