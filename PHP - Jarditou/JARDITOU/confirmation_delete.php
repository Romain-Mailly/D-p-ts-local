<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0 shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Jarditou-Suppression</title>
</head>
<body style="background-color: #243447;" class="text-light">
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

<?php
$pro_id = $_GET["pro_id"] ;
require "connexion_bdd.php" ;
$db = connexionBase() ;
$requete = "SELECT * FROM produits WHERE pro_id=" . $pro_id; 
$resultat = $db -> query($requete) ;
$produit = $resultat->fetch(PDO::FETCH_OBJ) ;
$resultat -> closeCursor() ;
?>

<div class="shadow">
<img src="jarditou_photos/promotion.jpg" class="rounded" alt="Promotions" title="Promotions" width="100%">
</div>
<br><br>

<form class="form-group text-center" action="delete.php?pro_id=<?php echo $pro_id ; ?>" method="POST">
<img src="jarditou_photos/<?php echo "$produit->pro_id.$produit->pro_photo" ; ?>" width="300px" class="img-fluid rounded mx-auto d-block col-3" alt="<?php echo $produit->pro_libelle; ?>" title="<?php echo $produit->pro_libelle; ?>">
    <h1><b><?php echo $produit -> pro_libelle ;?></b></h1>
    <br>
    <p>Êtes vous sûr de vouloir supprimer ce produit ?</p>
    <button class="btn btn-danger" type="submit"><i class="fas fa-trash-alt"></i> SUPPRIMER</button>
    <a class="btn btn-info" href="detail.php?pro_id=<?php echo $pro_id ; ?>"><i class="fas fa-times"></i> ANNULER</a>
</form> 




<br>
        <footer class="navbar navbar-expand-lg navbar-dark border-light bg-light rounded ml-5 mr-5">
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
    
    </div>
<script src="https://kit.fontawesome.com/08f7104fd7.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>