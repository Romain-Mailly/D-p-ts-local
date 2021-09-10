<?php 
session_start();
require "connexion_bdd.php" ;
$db = connexionBase() ;
$wequete = "INSERT INTO users (user_nom, user_prenom, user_email, user_login, user_mdp, user_d_create)
            VALUES (:nom, :prenom, :mail, :login, :mdp, NOW())" ;
$requete = $db ->prepare($wequete) ;
$requete -> bindValue(":nom", $_POST["nom"]) ;
$requete -> bindValue(":prenom", $_POST["prenom"]) ;
$requete -> bindValue(":login", $_POST["login"]) ;
$requete -> bindValue(":mail", $_POST["mail"]) ;
$mdp = password_hash($_POST["mdp"], PASSWORD_DEFAULT) ;
$requete -> bindValue(":mdp", $mdp) ;


$erreurs = "" ;

// NOM
if (!preg_match("/^[a-zA-Zéèê]{1,30}$/", $_POST["nom"]))
{
    $erreurs .= "&enom" ;
    header ("Location: inscription.php?$erreurs") ;
}

// PRENOM
if (!preg_match("/^[a-zA-Zéèê]{1,30}$/", $_POST["prenom"]))
{
    $erreurs .= "&epre" ;
    header ("Location: inscription.php?$erreurs") ;
}

// LOGIN
if (!preg_match("/^[\s\S]{1,30}$/", $_POST["login"]))
{
    $erreurs .= "&elog" ;
    header ("Location: inscription.php?$erreurs") ;
}

// EMAIL
if (!preg_match("/^[a-z0-9.-]+@[a-z0-9.-]{2,}.[a-z]{2,4}$/", $_POST["email"]))
{
    $erreurs .= "&email" ;
    header ("Location: inscription.php?$erreurs") ;
}

//MOT DE PASSE
if (!preg_match("/^[\s\S]{1,60}$/", $_POST["mdp"]))
{
    $erreurs .= "&emdp" ;
    header ("Location: inscription.php?$erreurs") ;
}

else
{
    $_SESSION["login"] = $_POST["login"] ;
    $_SESSION["mdp"] = $_POST["mdp"] ;            
    $requete->execute();         
    $resultat = $requete->fetch(PDO::FETCH_OBJ);            
    $requete->closeCursor();
    header ("Location: index.php") ;
    exit ;
}
?> 