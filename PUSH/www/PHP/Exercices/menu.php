<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Menu</title>
</head>
<body>
<div class="container">
    <br> <br>
<h1 class="text-success">Bravo espèce de gros beau gosse tu sais rentrer un mail et un mdp je suis fier de toi !<i class="bi bi-check2"></i></h1>
<br><br>

<?php 
session_start() ;
echo $_SESSION["login"] . "<br>" ;
$mdp = password_hash($_SESSION["mdp"], PASSWORD_DEFAULT) ;
echo $mdp . "<br>" ; 
?>

<br><br>

<form action="session.php" method="POST">

    <input type="submit" class="btn btn-success" value="Retour">

</form>







</div>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</body>
</html>