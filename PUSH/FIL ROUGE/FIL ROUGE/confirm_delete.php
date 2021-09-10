<!-- Appel du header -->
<?php
require "header.php" ;
require "connexion_db.php" ;
$db = connexionBase() ;
$pro_id = $_GET["pro_id"] ;
$requete = "SELECT pro_libelle, pro_id, pro_photo FROM produits WHERE pro_id = $pro_id " ;
$result = $db -> prepare($requete) ;
$result -> execute() ;
$produits = $result -> fetch(PDO::FETCH_OBJ) ;
?>

<center>
    <img src="photos_cube/<?php echo $produits->pro_id ; ?>.<?php echo $produits->pro_photo ; ?>" height="300">
    <h3><?php echo $produits->pro_libelle ; ?></h3>
<br><br>    
<i><h5>Êtes-vous sur de vouloir supprimer ce produit ?</h5></i>
<form action="delete.php" method="POST">
    <button type="submit" class="btn btn-success">Oui</button>
    <a class="btn btn-danger" href="details.php?pro_id=<?php echo $pro_id ; ?>">Non</a>
</form>

</center>




<!-- Appel du footer -->
<?php require "footer.php" ; ?>