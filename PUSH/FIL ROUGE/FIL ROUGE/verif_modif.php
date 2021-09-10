<?php
session_start() ;
require "connexion_db.php" ;
$db = connexionBase() ;
$requete = "UPDATE produits SET pro_ref = :ref, pro_libelle = :lib, pro_desc = :desc, pro_prix = :prix, pro_stock = :sto, pro_couleur = :col, pro_photo = :photo, NOW() WHERE pro_id = :id" ;
$result = $db -> prepare($requete) ;
$result -> bindValue(":id", $_POST["id"]) ;
$result -> bindValue(":ref", $_POST["ref"]) ;
$result -> bindValue(":lib", $_POST["lib"]) ;
$result -> bindValue(":desc", $_POST["desc"]) ;
$result -> bindValue(":prix", $_POST["prix"]) ;
$result -> bindValue(":sto", $_POST["sto"]) ;
$result -> bindValue(":col", $_POST["col"]) ;

$erreurs = "" ;
    

// Référence
if (!preg_match("/^[a-zA-Z-_0-9]{1,30}$/", $_POST["ref"]))
{
    $erreurs .= "&eref";
    header("Location: modif.php?pro_id=" . $_POST["id"] . $erreurs) ;
}

// Libellé
if (!preg_match("/^[\s\S0-9]{1,50}$/", $_POST["lib"]))
{
    $erreurs .= "&elib";
    header("Location: modif.php?pro_id=" . $_POST["id"] . $erreurs) ;
}

// Description
if (!preg_match("/^[\s\S]{0,1000}$/", $_POST["desc"]))
{
    $erreurs .= "&desc";
    header("Location: modif.php?pro_id=" . $_POST["id"] . $erreurs) ;
}

// Prix
if (!preg_match("/^[0-9]{1,4}.{0,1}[0-9]{0,2}$/", $_POST["prix"]))
{
    $erreurs .= "&eprix";
    header("Location: modif.php?pro_id=" . $_POST["id"] . $erreurs) ;
}

//Stock
if (!preg_match("/^[0-9]{1,11}$/", $_POST["sto"]))
{
    $erreurs .= "&esto";
    header("Location: modif.php?pro_id=" . $_POST["id"] . $erreurs) ;
}

// Couleur
if (!preg_match("/^[a-zA-Z]{0,30}$/", $_POST["col"]))
{
    $erreurs .= "&ecol";
    header("Location: modif.php?pro_id=" . $_POST["id"] . $erreurs) ;
}

if ($erreurs != NULL)
{
    exit ;
}

else
{
    $result->execute() ;

    header ("Location: index.php") ;
    exit ;

}

?>