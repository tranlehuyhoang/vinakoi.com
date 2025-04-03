<?php

namespace App\Livewire;

use Livewire\Component;

class Service extends Component
{
    public $slug;

    public function mount($slug)
    {
        // Accept the slug from the URL parameter
        $this->slug = $slug;
    }
    public function render()
    {
        $service = \App\Models\Service::where('slug', $this->slug)->first();
        $otherServices = \App\Models\Service::where('slug', '!=', $this->slug)
        ->limit(6)
        ->get();
        return view('livewire.service',compact('service','otherServices'));
    }
}
