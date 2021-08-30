<!DOCTYPE html>
<html lang="fr">
<?php
$title ;
$nav ;
?>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title><?php echo $title ;?></title>
</head>

<body style="background-color: #243447;" class="text-white">
    <div class="container">


    <a href="index.php" title="Accueil">
      <img src="jarditou_photos/jarditou_logo.jpg" alt="Logo Jarditou" title="Logo Jarditou" width="210" height="70">
    </a> 

        <h3 class="display-5 float-right text-light mt-3"><i class="fas fa-seedling"></i> Tout le jardin <i class="fas fa-seedling"></i></h3>

        <nav class="navbar navbar-expand-lg navbar-light">
  <a class="navbar-brand text-light" href="index.php"><span class="text-success">Jarditou</span><span class="text-danger">.com</span></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
        <li class="nav-item">
        <a class="nav-link text-light" href="index.php"><i class="fas fa-home"></i> Accueil <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light" href="liste.php"><i class="fas fa-list-ul"></i> Produits</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light" href="contact.php"><i class="far fa-user-circle"></i> Contact</a>
      </li>
        </ul>
        <div class="dropdown">
  <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  <i class="far fa-user-circle"></i> Se connecter 
  </button>
  <div class="dropdown-menu" style="background-color : #243447 ;">
  <form class="px-4 py-3">
    <div class="form-group">
      <label for="exampleDropdownFormEmail1" class="text-light">Adresse mail</label>
      <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="daveloper@afpa.fr">
    </div>
    <div class="form-group">
      <label for="exampleDropdownFormPassword1" class="text-light">Mot de passe</label>
      <input type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
    </div>
    <div class="form-group">
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="dropdownCheck">
        <label class="form-check-label text-light" for="dropdownCheck">
          Se souvenir de moi
        </label>
      </div>
    </div>
    <button type="submit" class="btn btn-primary text-light">Se connecter</button>
  </form>
  <div class="dropdown-divider"></div>
  <a class="dropdown-item text-light" href="inscription.php">Nouveau ? <u><b>Inscris toi !</b></u></a>
  <a class="dropdown-item text-light" href="#">Mot de passe oublié ?</a>
</div>
</div>
      </div>
    </nav>
        <img class="rounded" src="jarditou_photos/promotion.jpg" alt="Promotions" title="Promotions" width="100%">

        <script src="https://kit.fontawesome.com/08f7104fd7.js" crossorigin="anonymous"></script>