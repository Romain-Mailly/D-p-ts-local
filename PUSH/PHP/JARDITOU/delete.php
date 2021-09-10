<!-- Appel des pages nécéssaires, connexion à la DB et création de la requête quand on a confirmé de vouloir supprimer un produit -->
<?php
        $pro_id = $_GET["pro_id"] ;
        require "connexion_bdd.php" ;
        $db = connexionBase() ;
        $requete = "DELETE FROM produits WHERE pro_id=" . $pro_id ;
        $resultat = $db -> query($requete) ;
        header("Location: liste.php") ;
?>