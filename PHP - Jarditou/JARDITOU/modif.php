<!DOCTYPE html>
<html lang="fr" class="ml-5 mr-5">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0; shrink-to-fit=no">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <title>Modif</title>
  <?php
    $pro_id = $_GET["pro_id"] ;
    require "connexion_bdd.php" ;
    $db = connexionBase() ;
    $requete = "SELECT * FROM produits, categories WHERE pro_id = " . $pro_id . " AND pro_cat_id = cat_id" ;
    $resultat = $db -> query($requete) ;
    $produit = $resultat->fetch(PDO::FETCH_OBJ) ;
    $resultat -> closeCursor() ;
    $categorie = $db->prepare("SELECT cat_nom, cat_id  FROM categories ORDER BY cat_nom");
    $categorie -> execute() ;
  ?>
</head>
<body style="background-color: #243447;" class="text-light">
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



  <form action="verif_modif.php" method="post">

    <!-- ID -->

    <label for="id">ID</label> <br>
    <input class="form-control" type="text" name="id" id="id" value="<?php echo $produit -> pro_id ; ?>" readonly >
    <br>

    <!-- Référence --> 
    
    <label for="ref">Référence</label>
    <input type="text" class="form-control <?php if (isset($_GET['eref'])) { echo 'border border-warning'; } ?>" id="ref" name="ref" value="<?php echo $produit->pro_ref; ?>">
    <?php if (isset($_GET['eref'])) { echo '<i>La référence n\'a pas été renseignée, comporte des caractères spéciaux, ou comporte trop de caractères (max: 10).</i> <br>'; } ?>
    <br>

    <!-- Catégorie --> 
    
    <div class="form-group">
    <label for="categorie">Catégorie*</label>
    <select id="categorie" name="categorie" class="form-control">
      <?php

        while ($rowsCategorie = $categorie->fetch(PDO::FETCH_OBJ)):
      ?>
      <option value="<?php echo $rowsCategorie->cat_id; ?>" <?php if ($rowsCategorie->cat_nom == $produit->cat_nom) { echo 'selected'; } ?>>
      <?php echo $rowsCategorie->cat_nom; ?>
      </option>
      <?php
        endwhile;

        $categorie->closeCursor(); 
     ?>
    </select>
  </div>

    <!-- Libellé --> 
    
    <label for="libelle">Libellé</label>
    <input type="text" class="form-control <?php if (isset($_GET['elib'])) { echo 'border border-danger'; } ?>" id="libelle" name="libelle" value="<?php echo $produit->pro_libelle; ?>">
    <?php if (isset($_GET['elib'])) { echo '<i>Le libellé n\'a pas été renseignée, comporte des caractères spéciaux ou des chiffres ou comporte trop de caractères (max: 200).</i> <br>'; } ?>
    <br>

    
    <!-- Description --> 
    
    <label for="description">Descritpion</label>
    <textarea class="form-control <?php if (isset($_GET['edesc'])) { echo 'border border-danger'; } ?> " name="description" id="description"> <?php echo $produit -> pro_description ;?> </textarea>
    <?php if (isset($_GET['edesc'])) { echo '<i>La description n\'a pas été renseignée ou comporte trop de caractères (max: 1000).</i> <br>'; } ?>
    <br>

    <!-- Prix --> 
    
    <label for="prix">Prix</label>
    <input type="text" class="form-control <?php if (isset($_GET['eprix'])) { echo 'border border-danger'; } ?>" id="prix" name="prix" value="<?php echo $produit->pro_prix; ?>">
    <?php if (isset($_GET['eprix'])) { echo '<i>Le prix n\'a pas été renseignée, comporte des caractères spéciaux ou des lettres, ou comporte trop de caractères (max: 6 dont 2 chiffres après la virgule).</i> <br>'; } ?>
    <br>

    <!-- Couleur --> 
    
    <label for="couleur">Couleur</label>
    <input type="text" class="form-control <?php if (isset($_GET['ecolor'])) { echo 'border border-danger'; } ?>" id="couleur" name="couleur" value="<?php echo $produit->pro_couleur; ?>">
    <?php if (isset($_GET['ecolor'])) { echo '<i>La couleur n\'a pas été renseignée, comporte des caractères spéciaux ou des chiffres ou comporte trop de caractères (max: 30).</i> <br>'; } ?> 
    <br>



    <!-- Bloque --> 

   <?php if ($produit -> pro_bloque == 1): ?>
        <div class="form-group">
        <label for="bloque">Produit bloqué : </label>
        <input type="radio" name="bloque" value="1" readonly checked > Oui    
        <input type="radio" name="bloque" value="0" readonly > Non <br>
   </div>
      <?php else: ?>
        <div class="form-group">
        <label for="bloque">Produit bloqué : </label>
        <input type="radio" name="bloque" value="1" readonly > Oui    
        <input type="radio" name="bloque" value="0" readonly checked > Non <br>
      </div>
        <?php endif; ?>

    <!-- Date d'ajout -->

    Date d'ajout : <?php echo $produit -> pro_d_ajout . "<br><br>" ; ?>

    <!-- Date de modification -->

    Date de modification :
    <?php
      if ($produit -> pro_d_modif == NULL )
      {
        echo "Il n'y a pas eu de modification sur ce produit. <br><br> " ;
      }
      else
      {
        echo $produit -> pro_d_modif . "<br><br>" ;
      }

    ?>

        <a class="btn btn-warning" href="liste.php?pro_id=<?php echo $pro_id ; ?>"><i class="fas fa-list-ul"></i> Retour sur la liste</a>

        <div class="float-right">

        <button class="btn btn-success"><i class='far fa-share-square'></i> Enregistrer </button>
        <a class="btn btn-danger" href="modif.php?pro_id=<?php echo $pro_id ; ?>"><i class='fas fa-trash-alt'></i> Annuler</a>

    </div>
        <br>
  </form>

    <br>
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