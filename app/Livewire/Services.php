<?php

namespace App\Livewire;

use Livewire\Component;

class Services extends Component
{
    public $page = 1;

    public function render()
    {
        // Paginate services with 10 per page (you can adjust the perPage number)
        $services = \App\Models\Service::paginate(10);


        return view('livewire.services', compact('services'));
    }
}
