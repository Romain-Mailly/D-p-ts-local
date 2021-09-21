<!-- Appel du header -->
<?php
require "header.php" ;
require "connexion_db.php" ;
$db = connexionBase() ;
$requete = "SELECT * FROM produits WHERE pro_fou_id = 1 " ;
$result = $db -> prepare($requete) ;
$result -> execute() ;
$produit = $result -> fetch(PDO::FETCH_OBJ) ;
?>

<!-- Création des cards où sont affiché les produits -->
<div class="container text-center">
  <div class="row">

    <?php while($products = $result->fetch(PDO::FETCH_OBJ)) : ?>
    <div class="col-3 mb-3">
      <div class="card text-center" style="width: 18rem;">
        <img src="photos_cube/<?php echo $products->pro_id ; ?>.<?php echo $products->pro_photo ; ?>"
          class="card-img-top" alt="Cube n°<?php $products->pro_id ; ?>">
        <div class="card-body">
          <h5 class="card-title"><?php echo $products->pro_libelle ; ?></h5>
          <p class="card-text"><?php echo $products->pro_desc ; ?></p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item"><?php echo $products->pro_prix . "€" ; ?></li>
          <li class="list-group-item"><?php echo $products->pro_ref ; ?></li>
          <li class="list-group-item">Je sais pas encore zebi</li>
        </ul>
        <div class="card-body d-flex mx-auto">
            <a href="#" class="btn btn-primary"><i class="bi bi-cart2"></i></a>
            <a href="details.php?pro_id=<?php echo $products->pro_id ; ?>" class="btn btn-warning"><i class="bi bi-info-square"></i></a>
        </div>
      </div>
    </div>
    <?php endwhile ; ?>
  </div>
</div>






<!-- Appel du footer -->
<?php require "footer.php" ; ?>