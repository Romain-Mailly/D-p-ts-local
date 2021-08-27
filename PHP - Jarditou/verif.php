<?php

$erreurs = "" ;

if (!preg_match("/^[a-z0-9.-]+@[a-z0-9.-]{2,}.[a-z]{2,4}$/", $_POST["login"]) || is_null($_POST["login"]))
{
    $erreurs .= "&elogin" ;
    header ("Location: session.php?" . $erreurs) ;
}

if (!preg_match("/^[a-zA-Z0-9]{1,30}$/", $_POST["mdp"]))
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
    session_start() ;
    $_SESSION["login"] = $_POST["login"] ;
    $_SESSION["role"] = "admin" ;
    header ("Location: menu.php") ;
    exit ;
}



?>