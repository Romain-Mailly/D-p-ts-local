<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cub'in shop</title>
    <link rel="stylesheet" href="{{ mix('css/app.css') }}"></head>
<body>
    
@include('partials.navbar')
    <br>
<div class="container mx-auto">
    
@yield('content')

</div>
<br>
@include('partials.navbar2')
<script src="{{ mix('js/app.js') }}"></script>



</body>
</html>