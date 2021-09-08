<!-- Appel des pages nécéssaires, connexion à la DB et création de la requête pour se déconnecter -->
<?php
session_start() ;
require "connexion_bdd.php" ;
$db = connexionBase () ;
$login = $_SESSION["login"] ;
$wequete = "UPDATE users SET user_d_last = NOW() WHERE user_login = '$login'" ;
$requete = $db -> prepare($wequete) ;
$requete->execute() ;
$requete->closeCursor() ;
$_SESSION = array() ;
session_destroy() ;
header ("Location: index.php") ;
exit ;
?>


?>