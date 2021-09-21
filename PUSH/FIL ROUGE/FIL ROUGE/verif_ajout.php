<?php 

require "connexion_db.php" ;
$db = connexionBase() ;
$extension = substr(strrchr($_FILES["photo"]["name"], "."), 1);
$wequete = "INSERT INTO produits (pro_cat_id, pro_fou_id, pro_ref, pro_libelle, pro_desc, pro_prix, pro_stock, pro_couleur, pro_photo, pro_d_ajout)
            VALUES (:categorie, :fou, :ref, :libelle, :description, :prix, :stock, :couleur, :photo, NOW())" ;
$requete = $db -> prepare($wequete) ;
$requete->bindValue(":categorie", $_POST["categorie"]) ;
$requete->bindValue(":fou", $_POST["marque"]) ;
$requete->bindValue(":ref", $_POST["ref"]) ;
$requete->bindValue(":libelle", $_POST["libelle"]) ;
$requete->bindValue(":description", $_POST["description"]) ;
$requete->bindValue(":prix", $_POST["prix"]) ;
$requete->bindValue(":stock", $_POST["stock"]) ;
$requete->bindValue(":couleur", $_POST["couleur"]) ;
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
    header("Location: ajout.php?" . $erreurs) ;          
} 

// Catégorie
if (empty($_POST["categorie"]))
{
    $erreurs .= "&ecat" ;
    header("Location: ajout.php?" . $erreurs) ;
}

// Marque
if (empty($_POST["marque"]))
{
    $erreurs .= "&emar" ;
    header("Location: ajout.php?" . $erreurs) ;
}

// Référence
if (!preg_match("/^[a-zA-Z-_0-9]{1,10}$/", $_POST["ref"]))
{
    $erreurs .= "&eref";
    header("Location: ajout.php?" . $erreurs) ;
}

// Libellé
if (!preg_match("/^[\s\S]{1,200}$/", $_POST["libelle"]))
{
    $erreurs .= "&elib";
    header("Location: ajout.php?" . $erreurs) ;
}

// Description
if (!preg_match("/^[\s\S]{0,1000}$/", $_POST["description"]))
{
    $erreurs .= "&desc";
    header("Location: ajout.php?" . $erreurs) ;
}

// Prix
if (!preg_match("/^[0-9]{1,4}.{0,1}[0-9]{0,2}$/", $_POST["prix"]))
{
    $erreurs .= "&eprix";
    header("Location: ajout.php?" . $erreurs) ;
}

//Stock
if (!preg_match("/^[0-9]{1,11}$/", $_POST["stock"]))
{
    $erreurs .= "&estock";
    header("Location: ajout.php?" . $erreurs) ;
}

// Couleur
if (!preg_match("/^[a-zA-Z]{0,30}$/", $_POST["couleur"]))
{
    $erreurs .= "&ecolor";
    header("Location: ajout.php?" . $erreurs) ;
}

if ($erreurs != NULL)
{
    exit ;
}

else
    {
        $requete -> execute() ;
        $requete -> closeCursor() ;
        $requete = $db->prepare('SELECT pro_id FROM produits WHERE pro_ref = ?');            
        $requete->bindValue(1, $_POST['ref']);            
        $requete->execute();         
        $resultat = $requete->fetch(PDO::FETCH_OBJ);            
        $requete->closeCursor();  
                     
        move_uploaded_file($_FILES['photo']['tmp_name'], "jarditou_photos/$resultat->pro_id.$extension");
        header("Location: produits.php") ;
        exit ;
    }
?>