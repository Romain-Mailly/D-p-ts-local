<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Document</title>
</head>
<body style="background-color: #243447;">
    <div class="container">

    <a href="Index.html" title="Accueil">
      <img src="jarditou_photos/jarditou_logo.jpg" alt="Logo Jarditou" title="Logo Jarditou" width="210" height="70">
    </a> 

        <h1 class="display-5 float-right text-light">Tout le jardin</h1>

        <nav class="navbar navbar-expand-lg navbar-light">
      <a class="navbar-brand text-light" href="Index.html">Jarditou.com</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link text-light" href="Index.html"><i class="fas fa-home"></i> Accueil <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
            <a class="nav-link text-light" href="liste.php"><i class="fas fa-table"></i> Tableau</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link text-light" href="Contact.html"><i class="far fa-user-circle"></i> Contact</a>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Votre promotion" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fas fa-search"></i> Rechercher</button>
        </form>
      </div>
    </nav>

<img src="jarditou_photos/promotion.jpg" class="rounded" alt="Promotions" title="Promotions" width="100%">
    
    <?php
    require "connexion_bdd.php" ;
    $db = connexionBase() ;
    $requete = "" ;
    $result = $db->query($requete) ;
    ?>

    <form class="form-group">
        <label for="id">ID</label>
        <input class="form-control" name="id" id="id" type="text">
    </form>

    <form class="form-group">
        <label for="ref">Référence</label>
        <input name="ref" id="ref" type="text">
    </form> 

    <form class="form-group">
        <label for="libelle">Libellé</label>
        <input name="libelle" id="libelle" type="text">
    </form>

    <form class="form-group">
        <label for="prix">Prix</label>
        <input name="prix" id="prix" type="text">
    </form>

    <form class="form-group">    
        <label for="stock">Stock</label>
        <input name="stock" id="stock" type="text">
    </form>

    <form class="form-group">
        <label for="couleur">Couleur</label>
        <input name="couleur" id="couleur" type="text">
    </form>

    <form class="form-group">
        <label for="ajout">Date d'ajout</label>
        <input name="ajout" id="ajout" type="text">
    </form>

    <form class="form-group">
        <label for="modif">Date de modification</label>
        <input name="modif" id="modif" type="text">
    </form>

    <form class="form-group">
        <label for="bloque">Bloque</label>
        <input name="bloque" id="bloque" type="text">
    </form>




    <footer class="navbar navbar-expand-lg navbar-dark border-light bg-secondary rounded">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item">
          <a class="nav-link text-light" href="#"><i class="fas fa-list-ol"></i> Mentions légales <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="#"><i class="far fa-clock"></i> Horaires</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-light" href="#"><i class="far fa-map"></i> Plan du site</a>
          </li>
      </ul>
    </div>
</footer>

</div>
<script src="https://kit.fontawesome.com/08f7104fd7.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>