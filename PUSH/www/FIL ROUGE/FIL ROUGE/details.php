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
<a class="btn btn-primary" href="produits.php"><i class="bi bi-arrow-left"></i> Retour</a>
<center>
    <img src="photos_cube/<?php echo $produits->pro_id ; ?>.<?php echo $produits->pro_photo ; ?>" height="400px" >
</center>
<h4 class="text-success"> Catégorie : <?php echo $produits->pro_desc ; ?></h4>
<h4 class="text-primary"> Cube : <?php echo $produits->pro_libelle ; ?></h4>
<h4 class="text-danger"> Prix : <?php echo $produits->pro_prix ; ?> €</h4>
<h4 style="color : #FF9633 ;"> Marque : <?php echo $produits->fou_id ; ?></h4>
<h4 style="color: #FFE033 ;"> Couleur : <?php echo $produits->pro_couleur ; ?></h4>
<br>
<a class="btn btn-warning" href="modif.php?pro_id=<?php echo $produits->pro_id ; ?>">Modif</a>
<a class="btn btn-danger" href="confirm_delete.php?pro_id=<?php echo $produits->pro_id ; ?>">Delete</a>




<!-- Appel du footer -->
<?php require "footer.php" ; ?>