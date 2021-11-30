<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>VTT | Les Leups</title>
    <link rel="stylesheet" href="{{ mix('css/app.css') }}">
</head>
<body>

   @include('navbar.header')

    <br>

    <div class="container mx-auto text-center">
        @yield('content')
    </div>

    <br>

    @include('navbar.footer')

<script src="https://unpkg.com/@themesberg/flowbite@latest/dist/flowbite.bundle.js"></script>
<script src="https://kit.fontawesome.com/08f7104fd7.js" crossorigin="anonymous"></script>
<script src="{{ mix('js/app.js') }}"></script>
</body>
</html>
