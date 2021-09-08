<?php
session_start() ;

$erreurs = "" ;

if (!preg_match("/^[\s\S]{1,30}$/", $_POST["login"]))
{
    $erreurs .= "&elog" ;
    header ("Location: session.php?" . $erreurs) ;
}

if (!preg_match("/^[\s\S]{1,60}$/", $_POST["mdp"]))
{
    $erreurs .= "&emdp" ;
    header ("Location: session.php?" . $erreurs) ;
}


if ($erreurs != NULL)
{
    $erreurs .= "&eerreur" ;
    header ("Location: session.php?" . $erreurs) ;
    exit ;
}

else
{
    $_SESSION["login"] = $_POST["login"] ;
    $_SESSION["mdp"] = $_POST["mdp"] ;            
    $requete->execute();         
    $resultat = $requete->fetch(PDO::FETCH_OBJ);            
    $requete->closeCursor();  
    header ("Location: menu.php") ;
    exit ;
}



?>