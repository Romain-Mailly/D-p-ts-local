<?php session_start() ; ?>
<!DOCTYPE html>
<html lang="fr" class="mt-3">
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
    <!-- Petite icône à côté du titre dans l'onglet -->
    <link rel="icon" type="image/png" sizes="16x16" href="jarditou_photos/grooot.png">

</head>

<body style="background-color: #243447;" class="text-white">
    <div class="container">

<!-- LOGO JARDITOU -->
    <a href="index.php" title="Accueil">
      <img src="jarditou_photos/jarditou_logo.jpg" alt="Logo Jarditou" title="Logo Jarditou" width="210" height="65">
    </a> 
      
        <h3 class="display-5 float-right text-light d-xs-none d-none d-lg-block d-xl-block mt-3"><i class="fas fa-seedling"></i> Tout le jardin <i class="fas fa-seedling"></i></h3>


<!-- NAVBAR -->
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
      <!-- Bouton "admin" qui apparaît seulement le "chef"(moi) -->
      <?php if (isset($_SESSION["role"]) && ($_SESSION["role"] == "chef")) : ?>
      <li class="nav-item">
        <a class="nav-link text-light" href="admin.php"><i class="far fa-user-circle"></i> Admin</a>
      </li>
      <?php endif ; ?>
        </ul>
        <?php if (isset($_SESSION["login"])) : ?>
           
           <a class="btn btn-success mr-1" href="profil.php"><i class="fas fa-portrait"></i> Profil</a>
           <a class="btn btn-danger ml-1" href="deconnexion.php"><i class="fas fa-sign-out-alt"></i> Deconnexion</a>
           
           <?php else : ?>
        <div class="dropdown">
  <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  <i class="far fa-user-circle"></i> Se connecter 
  </button>
  <div class="dropdown-menu" style="background-color : #243447 ;">
  <form class="px-4 py-3 " action="verif_connexion.php" method="POST">
    <div class="form-group">
      <label for="login" class="text-light">Login</label>
      <input type="text" class="form-control" id="login" name="login" placeholder="User_name">
    </div>
    <div class="form-group">
      <label for="mdp" class="text-light">Mot de passe</label>
      <input type="password" class="form-control" id="mdp" name="mdp" placeholder="Password">
      <?php if (isset($_GET['emdp'])) {echo '<br><b><center><span class="text-light">Login ou Mot de passe erroné</span></center></b>' ; } ?>
    </div>

    <button type="submit" name="submit" class="btn btn-primary text-light">Se connecter</button>
  </form>
  <div class="dropdown-divider"></div>
  <a class="dropdown-item text-light" style="background-color :#243447 ;" href="inscription.php">Nouveau ? <u><b>Inscris toi !</b></u></a>
  <a class="dropdown-item text-light" style="background-color :#243447 ;" href="mdpforget.php">Mot de passe oublié ?</a>
</div>
</div>
            <?php endif ; ?>
      </div>
    </nav>
        <img class="rounded" src="jarditou_photos/promotion.jpg" alt="Promotions" title="Promotions" width="100%">

        <script src="https://kit.fontawesome.com/08f7104fd7.js" crossorigin="anonymous"></script>