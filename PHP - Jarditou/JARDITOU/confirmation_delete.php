<?php
$title = 'Jarditou | Confirmation' ;
require "header.php" ;
$pro_id = $_GET["pro_id"] ;
require "connexion_bdd.php" ;
$db = connexionBase() ;
$requete = "SELECT * FROM produits WHERE pro_id=" . $pro_id; 
$resultat = $db -> query($requete) ;
$produit = $resultat->fetch(PDO::FETCH_OBJ) ;
$resultat -> closeCursor() ;
?>

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

<?php require "footer.php" ; ?>