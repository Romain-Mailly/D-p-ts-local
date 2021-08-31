<?php
$title = "Jarditou | Profil" ;
require "header.php" ;

require "connexion_bdd.php" ;
$db = connexionBase() ;
$requete = "SELECT * FROM users WHERE user_login = '$login'" ;
$result = $db->prepare($requete) ;
$result->execute() ;


require "footer.php" ;
?>