<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Jarditou-Ajout</title>
</head>
<body style="background-color: #243447;" class="text-light">

    <?php
        require "connexion_bdd.php" ;
        $db = connexionBase() ;
        $categorie = $db->prepare("SELECT cat_nom, cat_id  FROM categories ORDER BY cat_nom");
        $categorie -> execute() ;
    ?>

    <div class="container">

    <a href="index.php" title="Accueil">
      <img src="jarditou_photos/jarditou_logo.jpg" alt="Logo Jarditou" title="Logo Jarditou" width="210" height="70">
    </a> 

        <h1 class="display-5 float-right text-light">Tout le jardin</h1>

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
      <li class="nav-item active">
        <a class="nav-link text-light" href="liste.php"><i class="fas fa-list-ul"></i> Produits</a>
      </li>
      <li class="nav-item ">
        <a class="nav-link text-light" href="contact.php"><i class="far fa-user-circle"></i> Contact</a>
      </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Votre promotion" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fas fa-search"></i> Rechercher</button>
        </form>
      </div>
    </nav>

<img src="jarditou_photos/promotion.jpg" class="rounded" alt="Promotions" title="Promotions" width="100%">

    <br><br>

    <form class="form-group" action="verif_ajout.php" method="POST" enctype="multipart/form-data">


        <!-- Photo -->
        <div class="form-group">
            <label for="photo">Photo*</label><br>
            <input type="file" <?php if (isset($_GET['ephoto'])) { echo 'class="border border-danger"'; } ?> id="photo" name="photo"><br>
            <?php
            if (isset($_GET['ephoto'])) { echo '<i class="fas fa-exclamation-circle text-danger"> Le format de l\'image doit être en .jpg, .jpeg ou .png.</i>'; }
            ?>
        </div>


        <!-- Référence -->
        <label for="ref">Référence</label>
        <input type="text" class="form-control <?php if (isset($_GET['eref'])) { echo 'border border-danger'; } ?>" id="ref" name="ref" placeholder="Ex : barb004 (max. 10 caractères)">
        <?php if (isset($_GET['eref'])) { echo '<i>La référence n\'a pas été renseignée, comporte des caractères spéciaux, ou comporte trop de caractères.</i> <br>'; } ?>
    
        <br>

        <!-- Libellé -->
        <label for="libelle">Libellé</label>
        <input type="text" class="form-control <?php if (isset($_GET['elib'])) { echo 'border border-danger'; } ?>" id="libelle" name="libelle" placeholder="Ex : Zeus le barbecue (max. 200 caractères)">
        <?php if (isset($_GET['elib'])) { echo '<i>Le libellé n\'a pas été renseignée, comporte des caractères spéciaux ou des chiffres ou comporte trop de caractères.</i> <br>'; } ?>

        <br>

        <!-- Catégorie --> 
    
        <div class="form-group">
            <label for="categorie">Catégorie*</label>
            <select id="categorie" name="categorie" class="form-control <?php if (isset($_GET['ecat'])) {echo 'border border-danger' ; } ?>">
                <option value="" selected disabled>--</option>
        <?php

            while ($rowsCategorie = $categorie->fetch(PDO::FETCH_OBJ)):
        ?>
        <option value="<?php echo $rowsCategorie->cat_id; ?>">
        <?php echo $rowsCategorie->cat_nom; ?>
        </option>
        <?php
            endwhile;

            $categorie->closeCursor(); 
        ?>
        </select>
        <?php if (isset($_GET['ecat'])) {echo '<i>Veuillez séléctionner une catégorie.</i> <br>' ; } ?>
        </div>
  
        <br>
        
        <!-- Description -->
        <label for="description">Description</label>
        <textarea class="form-control <?php if (isset($_GET['edesc'])) { echo 'border border-danger'; } ?> " name="description" id="description" placeholder="Ex : C'est un très beau barbecue et en plus il fait de très bonnes merguez ! (max. 1000 caractères)"></textarea>
        <?php if (isset($_GET['edesc'])) { echo '<i>La description n\'a pas été renseignée ou comporte trop de caractères.</i> <br>'; } ?>
        <br>

        <!-- Prix -->
        <label for="prix">Prix</label>
        <input type="text" class="form-control <?php if (isset($_GET['eprix'])) { echo 'border border-danger'; } ?>" id="prix" name="prix" placeholder="Ex : 666.95 (max. 6 caractères dont 2 après la virgule obligatoires)">
        <?php if (isset($_GET['eprix'])) { echo '<i>Le prix n\'a pas été renseignée, comporte des caractères spéciaux ou des lettres, ou comporte trop de caractères.</i> <br>'; } ?>

        <br>

        <!-- Stock -->
        <label for="stock">Stock</label>
        <input type="text" class="form-control <?php if (isset($_GET['estock'])) { echo 'border border-danger'; } ?>" id="stock" name="stock" placeholer="Ex : 2 (max. 11 caractères)">
        <?php if (isset($_GET['estock'])) { echo '<i>Le stock n\'a pas été renseignée, comporte des caractères spéciaux ou des lettres, ou comporte trop de caractères.</i> <br>'; } ?>
        
        <!-- Couleur -->
        <br>
        <label for="couleur">Couleur</label>
        <input type="text" class="form-control <?php if (isset($_GET['ecolor'])) { echo 'border border-danger'; } ?>" id="couleur" name="couleur" placeholder="Ex : Pourpre (max. 30 caractères)">
        <?php if (isset($_GET['ecolor'])) { echo '<i>La couleur n\'a pas été renseignée, comporte des caractères spéciaux ou des chiffres ou comporte trop de caractères.</i> <br>'; } ?>

        <br>

        <!-- Produits bloqués -->
        <label for="bloque">Produit bloqué :</label>
        <input name="bloque" id="bloque" type="radio" value="1"> Oui
        <input name="bloque" type="radio" value="0" checked> Non

        <br><br>

        <div class="float-right">
            <button class="btn btn-success"><i class='far fa-share-square'></i> Enregistrer</button>
            <a href="liste.php" class="btn btn-danger"><i class='far fa-trash-alt'></i> Annuler</a>
        </div>
        <br>
    </form>


  </div>

<br>
    <footer class="navbar navbar-expand-lg navbar-dark border-light bg-light rounded">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item">
          <a class="nav-link text-dark" href="#"><i class="fas fa-list-ol"></i> Mentions légales <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark" href="#"><i class="far fa-clock"></i> Horaires</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-dark" href="#"><i class="far fa-map"></i> Plan du site</a>
          </li>
      </ul>
    </div>
</footer>

<br><br>

<script src="https://kit.fontawesome.com/08f7104fd7.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>