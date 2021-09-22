<?php
session_start() ;
require "connexion_db.php" ;
$db = connexionBase() ;
$pro_id = $_GET["pro_id"] ;
$requete = "DELETE FROM produits WHERE pro_id = $pro_id" ;
$result = $db -> prepare($requete) ;
$result->execute () ;

header ("Location: produits.php") ;
exit ;
?>