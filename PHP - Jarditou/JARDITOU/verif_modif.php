<?php

require "connexion_bdd.php" ;
$db = connexionBase() ;
$wequete = "UPDATE produits SET pro_ref = :ref, pro_cat_id= :categorie, pro_libelle = :libelle, pro_description = :description, pro_prix = :prix, pro_couleur = :couleur, pro_bloque = :bloque, pro_d_modif = NOW() WHERE pro_id = :id" ;
$requete = $db -> prepare($wequete) ;
$requete->bindValue(":id", $_POST["id"]) ;
$requete->bindValue(":ref", $_POST["ref"]) ;
$requete->bindValue(":categorie", $_POST["categorie"]) ;
$requete->bindValue(":libelle", $_POST["libelle"]) ;
$requete->bindValue(":description", $_POST["description"]) ;
$requete->bindValue(":prix", $_POST["prix"]) ;
$requete->bindValue(":couleur", $_POST["couleur"]) ;
$requete->bindValue(":bloque", $_POST["bloque"]) ;
$erreurs = "" ;


    // Référence
    if (!preg_match("/^[a-zA-Z-_0-9]{1,10}$/", $_POST["ref"]))
    {
        $erreurs .= "&eref";
        header("Location: modif.php?pro_id=" . $_POST["id"] . $erreurs) ;
    }

    // Libellé
    if (!preg_match("/^[\s\S]{1,200}$/", $_POST["libelle"]))
    {
        $erreurs .= "&elib";
        header("Location: modif.php?pro_id=" . $_POST["id"] . $erreurs) ;
    }

    // Description
    if (!preg_match("/^[\s\S]{0,1000}$/", $_POST["description"]))
    {
        $erreurs .= "&desc";
        header("Location: modif.php?pro_id=" . $_POST["id"] . $erreurs) ;
    }

    // Prix
    if (!preg_match("/^[0-9]{1,4}\.[0-9]{0,2}$/", $_POST["prix"]))
    {
        $erreurs .= "&eprix";
        header("Location: modif.php?pro_id=" . $_POST["id"] . $erreurs) ;
    }

    // Couleur
    if (!preg_match("/^[a-zA-Z]{0,30}$/", $_POST["couleur"]))
    {
        $erreurs .= "&ecolor";
        header("Location: modif.php?pro_id=" . $_POST["id"] . $erreurs) ;
    }

    if ($erreurs != NULL)
    {
        exit ;
    }

    else
    {
        $requete -> execute() ;
        $requete -> closeCursor() ;
        header("Location: liste.php") ;
        exit ;
    }
    
?>