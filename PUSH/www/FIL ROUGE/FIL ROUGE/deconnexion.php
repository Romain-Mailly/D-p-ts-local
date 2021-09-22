<!-- Appel des pages nécéssaires, connexion à la DB et création de la requête pour se déconnecter -->
<?php
session_start() ;
require "connexion_db.php" ;
$db = connexionBase () ;
$login = $_SESSION["login"] ;
$wequete = "UPDATE users SET user_d_last = NOW() WHERE user_login = '$login'" ;
$requete = $db -> prepare($wequete) ;
$requete->execute() ;
$requete->closeCursor() ;

unset($_SESSION["login"]);
unset($_SESSION["role"]);

if (ini_get("session.use_cookies"))
{
    setcookie(session_name(), '', time()-1);
}
session_destroy() ;
header ("Location: index.php") ;
exit ;
?>