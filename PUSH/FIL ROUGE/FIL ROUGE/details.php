<!-- Appel du header -->
<?php
require "header.php" ;
require "connexion_db.php" ;
$db = connexionBase() ;
$pro_id = $_GET["pro_id"] ;
$requete = "SELECT * FROM produits, fournisseurs WHERE pro_id = $pro_id AND pro_fou_id = fou_id" ;
$result = $db -> prepare($requete) ;
$result -> execute() ;
$produits = $result -> fetch(PDO::FETCH_OBJ) ;
?>
<center>
    <img src="photos_cube/<?php echo $produits->pro_id ; ?>.<?php echo $produits->pro_photo ; ?>" height="400px">
</center>
<h4> Catégorie : <?php echo $produits->pro_desc ; ?></h4>
<h4> Cube : <?php echo $produits->pro_libelle ; ?></h4>
<h4> Prix : <?php echo $produits->pro_prix ; ?> €</h4>
<h4> Marque : <?php echo $produits->fou_id ; ?></h4>
<a class="btn btn-warning" href="modif.php?pro_id=<?php echo $produits->pro_id ; ?>">Modif</a>
<a class="btn btn-danger" href="confirm_delete.php?pro_id=<?php echo $produits->pro_id ; ?>">Delete</a>




<!-- Appel du footer -->
<?php require "footer.php" ; ?>