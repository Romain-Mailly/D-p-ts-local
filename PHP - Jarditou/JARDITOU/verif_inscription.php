
<?php 
var_dump($_POST);


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
    header ("Location: index.php") ;
    die ;
} 
?> 