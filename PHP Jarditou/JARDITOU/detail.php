<!DOCTYPE html>
<html lang="fr" class="ml-5 mr-5">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0; shrink-to-fit=no">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <title>Details</title>
  <?php
    $pro_id = $_GET["pro_id"] ;
    require "connexion_bdd.php" ;
    $db = connexionBase() ;
    $requete = "SELECT * FROM produits WHERE pro_id = " . $pro_id ;
    $resultat = $db -> query($requete) ;
    $produit = $resultat->fetch(PDO::FETCH_OBJ) ;
    $resultat -> closeCursor() ;
  ?>
</head>

<body>
  <div class="container">
    <img src="jarditou_html_zip/images/jarditou_logo.jpg" alt="Logo Jarditou" title="Logo Jarditou" width="210"
      height="70">

    <h1 class="display-5 float-right">Tout le jardin</h1>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">Jarditou.com</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="Index.html">Accueil <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="Tableau.html">Tableau</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="Contact.html">Contact</a>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Votre promotion" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Rechercher</button>
        </form>
      </div>
    </nav>

    <img src="jarditou_html_zip/images/promotion.jpg" alt="Promotions" title="Promotions" width="100%">

    <br><br>
    <h1>Détails des produits</h1>
    <br>
    
    <form action="modif.php?pro_id=<?php echo $pro_id ; ?>" method="post">

      <!-- Libelle -->

     
        <label for="id">ID</label> <br>
        <input class="form-control" type="text" name="id" id="id" value="<?php echo $produit -> pro_id ; ?>" readonly>
     <br>

      <!-- Référence -->

     
        <label for="ref">Référence</label>
        <input class="form-control" type="text" name="ref" id="ref" value="<?php echo $produit -> pro_ref ;?>" readonly>
      <br>

      <!-- Catégorie -->

      
        <label for="categorie">Catégorie</label>
        <input class="form-control" type="text" name="categorie" id="categorie"
          value="<?php echo $produit -> pro_cat_id ;?>" readonly>
     <br>

      <!-- Libellé -->

   
        <label for="libelle">Libellé</label>
        <input class="form-control" type="text" name="libelle" id="libelle"
          value="<?php echo $produit -> pro_libelle ;?>" readonly>
      <br>


      <!-- Description -->

      
        <label for="description">Descritpion</label>
        <textarea class="form-control" name="description" id="description"
          readonly> <?php echo $produit -> pro_description ;?> </textarea>
      <br>

      <!-- Prix -->

    
        <label for="prix">Prix</label>
        <input class="form-control" type="text" name="prix" id="prix" value="<?php echo $produit -> pro_prix . "€";?>"
          readonly>
      <br>

      <!-- Couleur -->

        <label for="couleur">Couleur</label>
        <input class="form-control" type="text" name="couleur" id="couleur"
          value="<?php echo $produit -> pro_couleur ;?>" readonly>
     <br>


      <!-- Bloque -->

      <?php
      if ($produit -> pro_bloque == 1)
      {
        echo '
        <label for="bloque">Produit bloqué : </label>
        <input type="radio" name="bloque" value="1" disabled checked > Oui    
        <input type="radio" name="bloque" value="0" disabled > Non <br>
        ' ;
      }
      else
      {
        echo '
        <label for="bloque">Produit bloqué : </label>
        <input type="radio" name="bloque" value="1" disabled > Oui    
        <input type="radio" name="bloque" value="0" disabled checked > Non <br>
        ' ;
      }
    ?>

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
    
    
    

    <input type="submit" class="btn btn-warning float-right" value="Modifier"><br>
  
    </form>
    
    <br>
    <footer class="navbar navbar-expand-lg navbar-dark bg-dark rounded">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01"
        aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
          <li class="nav-item">
            <a class="nav-link" href="#">mentions légales <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">horaires</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">plan du site</a>
          </li>
        </ul>
      </div>
    </footer>
  </div>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
  </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
  </script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
  </script>
</body>

</html>