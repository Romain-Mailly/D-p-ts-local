<?php

require "connexion_bdd.php" ;
$db = connexionBase() ;
$extension = substr(strrchr($_FILES["photo"]["name"], "."), 1);
$oldext = $_POST["oldext"] ;
$pro_id = $_POST["id"] ;
$wequete = "UPDATE produits SET pro_ref = :ref, pro_cat_id= :categorie, pro_libelle = :libelle, pro_description = :description, pro_stock = :stock, pro_prix = :prix, pro_couleur = :couleur, pro_bloque = :bloque, pro_photo = :photo, pro_d_modif = NOW() WHERE pro_id = :id" ;
$requete = $db -> prepare($wequete) ;
$requete->bindValue(":id", $_POST["id"]) ;
$requete->bindValue(":ref", $_POST["ref"]) ;
$requete->bindValue(":categorie", $_POST["categorie"]) ;
$requete->bindValue(":libelle", $_POST["libelle"]) ;
$requete->bindValue(":description", $_POST["description"]) ;
$requete->bindValue(":stock", $_POST["stock"]) ;
$requete->bindValue(":prix", $_POST["prix"]) ;
$requete->bindValue(":couleur", $_POST["couleur"]) ;
$requete->bindValue(":bloque", $_POST["bloque"]) ;
$requete->bindValue(":photo", $extension) ;
$erreurs = "" ;


    $aMimeTypes = array('image/jpg', 'image/jpeg', 'image/png');            
    $finfo = finfo_open(FILEINFO_MIME_TYPE);            
    $mimeType = finfo_file($finfo, $_FILES['photo']['tmp_name']);           
    finfo_close($finfo);  
    
    //Photo
    if (!in_array($mimeType, $aMimeTypes))            
    {            
        $errors .= '&ephoto';            
        header("Location: modif.php?pro_id=" . $_POST["id"] . $erreurs) ;
    }
    

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

    //Stock
    if (!preg_match("/^[0-9]{1,11}$/", $_POST["stock"]))
    {
        $erreurs .= "&estock";
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
        unlink("jarditou_photos/$pro_id.$oldext") ;
        move_uploaded_file($_FILES['photo']['tmp_name'], "jarditou_photos/$pro_id.$extension");

        header("Location: liste.php") ;
        exit ;
    }
    
?>