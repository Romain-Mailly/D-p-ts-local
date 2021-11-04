<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VTT | Les Leups</title>
    <link rel="stylesheet" href="{{ mix('css/app.css') }}">
</head>
<body>

   @include('navbar.header')

    <hr>

    <br>
    <div class="container mx-auto">
        @yield('content')
    </div>

    <br>

    @include('navbar.footer')

<script src="{{ mix('js/app.js') }}"></script>
</body>
</html>