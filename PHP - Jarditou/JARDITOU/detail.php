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
    $requete = "SELECT * FROM produits, categories WHERE pro_id = " . $pro_id . " AND pro_cat_id = cat_id" ;
    $resultat = $db -> query($requete) ;
    $produit = $resultat->fetch(PDO::FETCH_OBJ) ;
    $resultat -> closeCursor() ;
    $categorie = $db->prepare("SELECT cat_nom  FROM categories, produits WHERE cat_id = pro_cat_id AND pro_id = " . $pro_id);
    $categorie -> execute() ;
    $rowsCategorie = $categorie->fetch(PDO::FETCH_OBJ)
  ?>
</head>

<body style="background-color: #243447;">
  <div class="container">
    <img src="jarditou_photos/jarditou_logo.jpg" alt="Logo Jarditou" title="Logo Jarditou" width="210"
      height="70">

    <h1 class="display-5 float-right text-light">Tout le jardin</h1>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="Index.html">Jarditou.com</a>
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
            <a class="nav-link" href="liste.php">Tableau</a>
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

    <img src="jarditou_photos/promotion.jpg" class="rounded" alt="Promotions" title="Promotions" width="100%">

    <br><br>
    <h1 class="text-light">Détails des produits</h1>
    <br>
    
    <form action="modif.php?pro_id=<?php echo $pro_id ; ?>" method="post">


      <!-- Photo -->
      <img src="jarditou_photos/<?php echo "$produit->pro_id.png"; ?>" class="img-fluid rounded mx-auto d-block col-3" alt="<?php echo $produit->pro_libelle; ?>" title="<?php echo $produit->pro_libelle; ?>">




      <!-- ID -->

     
        <label class="text-light" for="id">ID</label> <br>
        <input class="form-control" type="text" name="id" id="id" value="<?php echo $produit -> pro_id ; ?>" readonly>
     <br>

      <!-- Référence -->

     
        <label class="text-light" for="ref">Référence</label>
        <input class="form-control" type="text" name="ref" id="ref" value="<?php echo $produit -> pro_ref ;?>" readonly>
      <br>

      <!-- Catégorie -->

      
      <div class="form-group">
    <label class="text-light" for="categorie">Catégorie*</label>
    <input class="form-control" type="text" name="categorie" id="categorie" value="<?php echo $rowsCategorie->cat_nom; ?>" readonly >
  </div>

     <br>

      <!-- Libellé -->

   
        <label class="text-light" for="libelle">Libellé</label>
        <input class="form-control" type="text" name="libelle" id="libelle"
          value="<?php echo $produit -> pro_libelle ;?>" readonly>
      <br>


      <!-- Description -->

      
        <label class="text-light" for="description">Descritpion</label>
        <textarea class="form-control" name="description" id="description"
          readonly> <?php echo $produit -> pro_description ;?> </textarea>
      <br>

      <!-- Prix -->

    
        <label class="text-light" for="prix">Prix</label>
        <input class="form-control" type="text" name="prix" id="prix" value="<?php echo $produit -> pro_prix ;?>"
          readonly>
      <br>

      <!-- Couleur -->

        <label class="text-light" for="couleur">Couleur</label>
        <input class="form-control" type="text" name="couleur" id="couleur"
          value="<?php echo $produit -> pro_couleur ;?>" readonly>
     <br>


      <!-- Bloque -->

      <?php
      if ($produit -> pro_bloque == 1)
      {
        echo '
        <label class="text-light" for="bloque">Produit bloqué : </label>
        <input type="radio" name="bloque" value="1" disabled checked > <span class="text-light">Oui</span>    
        <input type="radio" name="bloque" value="0" disabled > <span class="text-light">Non</span> <br>
        ' ;
      }
      else
      {
        echo '
        <label class="text-light" for="bloque">Produit bloqué : </label>
        <input type="radio" name="bloque" value="1" disabled > <span class="text-light">Oui</span>    
        <input type="radio" name="bloque" value="0" disabled checked > <span class="text-light">Non</span> <br>
        ' ;
      }
    ?>

      <!-- Date d'ajout -->

      <span class="text-light">Date d'ajout :</span> <?php echo '<span class="text-light">' . $produit -> pro_d_ajout . "</span><br><br>" ; ?>

      <!-- Date de modification -->

      <span class="text-light">Date de modification :</span>
      <?php
      if ($produit -> pro_d_modif == NULL )
      {
        echo '<span class="text-light">Il n\'y a pas eu de modification sur ce produit. </span><br><br> ' ;
      }
      else
      {
        echo '<span class="text-light">' . $produit -> pro_d_modif . "</span><br><br>" ;
      }

    ?>
    
    
    

    <input type="submit" class="btn btn-warning float-right" value="Modifier"><br>
  
    </form>
    
    <br>
    <footer class="navbar navbar-expand-lg navbar-dark border-light bg-secondary rounded">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item">
          <a class="nav-link text-light" href="#">mentions légales <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="#">horaires</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-light" href="#">plan du site</a>
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