<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Document</title>
    <?php
    $pro_id = $_GET["pro_id"] ;

    try
    {
        $db =new PDO('mysql:host=localhost;charset=utf8;dbname=jarditou', 'root', '');
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION) ;
    }

    catch (Exception $e)
    {
        echo "Erreur n°" . $e->getCode() . " : " . $e->getMessage() . "<br>" ;
        die("Fin du script") ;
    }

    $requete = "SELECT * FROM jarditou.produits WHERE pro_id =" . $pro_id ;
    $resultat = $db->query($requete) ;
    $produit = $resultat->fetch(PDO::FETCH_OBJ);
    $resultat->closeCursor() ;
    ?>
</head>
<body>
    <p>
        Produit n°<?php echo $produit->pro_id; ?><br>
        Libellé : <?php echo $produit->pro_libelle; ?><br>
        Catégorie n°<?php echo $produit->pro_cat_id; ?><br>
        Référence : <?php echo $produit->pro_ref; ?><br>
        Description : <p><?php echo $produit->pro_description; ?></p>
        Prix : <?php echo $produit->pro_prix; ?>€<br>
        Stock : <?php echo $produit->pro_stock; ?><br>
        Couleur : <?php echo $produit->pro_couleur; ?><br>
        Photo (extension) : <?php echo $produit->pro_photo; ?><br>
        Date d'ajout : <?php echo $produit->pro_d_ajout; ?><br>
        Date de modification :
            <?php 
            if ($produit->pro_d_modif == NULL)
            {
                echo "n/a";
            }
            else
            {
                echo $produit->pro_d_modif ;
            }
            ?><br>

            Statut du produit :
            <?php
            if($produit->$pro_bloque == NULL || $produit->pro_bloque == 0 )
            {
                echo "Disponible" ;
            }
            else
            {
                echo "Indisponible" ;
            }
            ?><br>
            </p>
</body>
</html>