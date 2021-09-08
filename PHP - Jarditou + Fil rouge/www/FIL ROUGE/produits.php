<!-- Script de la liste des produits du site -->
<?php 
// Appel du header
require "header.php" ;

// Appel à "connexion_db" pour relié le fichier à la base de données 
require "connexion_db.php" ;

// Attribution de la variable $db à la fonction connexionBase() 
$db = connexionBase() ;

//Création de la requête pour l'affichage des produits 
$req = "SELECT * FROM produits" ;
$result = $db -> prepare($req) ;
$result->execute() ;


?>

<!-- Création des cards où sont affiché les produits -->

<?php while($products = $result->fetch(PDO::FETCH_OBJ)) : ?>
<center>
  <div class="card text-center" style="width: 18rem;">
    <img src="..." class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title"><?php echo $products->pro_libelle ; ?></h5>
      <p class="card-text"><?php echo $products->pro_desc ; ?></p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item"><?php echo $products->pro_prix . "€" ; ?></li>
      <li class="list-group-item"><?php echo $products->pro_ref ; ?></li>
      <li class="list-group-item">Je sais pas encore zebi</li>
    </ul>
    <div class="card-body d-flex">
      <a href="#" class="btn btn-primary">Ajouter au panier</a>
      <a href="#" class="btn btn-warning">Details du produit</a>
    </div>
  </div>
</center>
<?php endwhile ; ?>







<?php require "footer.php" ; ?>