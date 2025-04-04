<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        @if(request()->is('/'))
            <title>VinaKoi - Thức ăn thú cưng cao cấp đến từ Nhật Bản</title>
            <meta name="description" content="Chúng tôi cung cấp thức ăn cao cấp và các dịch vụ chăm sóc thú cưng từ Nhật Bản">
        @endif
        @livewireStyles
    </head>
    <body>

        {{ $slot }}
        @livewireScripts
    </body>
</html>
