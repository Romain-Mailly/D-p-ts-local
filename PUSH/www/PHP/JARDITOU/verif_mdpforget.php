<?php
session_start() ;
require "connexion_bdd.php" ;
$db = connexionBase() ;
$email = $_POST["mail"] ;
$requete = "SELECT * FROM users WHERE user_email = '$email'" ;
$result = $db->prepare($requete) ;
$result->execute() ;

if ($email )


?>