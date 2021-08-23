<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Liste</title>
</head>

<body style="background-color: #243447;">
    <div class="container">


        <img src="jarditou_photos/jarditou_logo.jpg" alt="Logo Jarditou" title="Logo Jarditou" width="210"
            height="70">

        <h1 class="display-5 float-right text-light">Tout le jardin</h1>

        <nav class="navbar navbar-expand-lg navbar-light bg-dark rounded">
            <a class="navbar-brand text-light" href="Index.html">Jarditou.com</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link text-light" href="Index.html">Accueil <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link text-light" href="liste.php">Tableau</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link text-light" href="Contact.html">Contact</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="text" placeholder="Votre promotion" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Rechercher</button>
                </form>
            </div>
        </nav>

        <img class="rounded" src="jarditou_photos/promotion.jpg" alt="Promotions" title="Promotions" width="100%">
        <br><br>
        <h1 class="text-light">Liste des produits</h1>
            <?php
require "connexion_bdd.php" ;
$db = connexionBase() ;
$requete = "SELECT pro_photo, pro_id, pro_ref, pro_libelle, pro_prix, pro_stock, pro_couleur, pro_d_ajout, pro_d_modif, pro_bloque FROM produits ORDER BY pro_id ASC" ;
$result = $db -> query($requete) ;

if (!$result)
{
    $tableauErreur = $db -> errorInfo();
    echo $tableauErreur[2] ;
    die("Erreur dans la requête.") ;
}

if ($result -> rowCount() == 0)
{
    //Pas d'enregistrement
    die("La table est vide.") ;
}
?>

            <table class="table table-striped table-bordered table-hover table-dark col-12 ">
                <thead class="thead-dark">
                    <tr>
                        <th>Photo</th>
                        <th>ID</th>
                        <th>Référence</th>
                        <th>Libellé</th>
                        <th>Prix</th>
                        <th>Stock</th>
                        <th>Couleur</th>
                        <th>Ajout</th>
                        <th>Modif</th>
                        <th>Bloqué</th>
                    </tr>
                </thead> 
<?php
                while ($row = $result -> fetch(PDO::FETCH_OBJ))
                {
                echo "<tr>" ;
                    echo '<td> <img class="img-fluid" src="jarditou_photos/' . $row -> pro_id . '.png" width="100px"> </td>';
                    echo "<td>" . $row -> pro_id . "</td>" ;
                    echo "<td>" . $row -> pro_ref . "</td>" ;
                    echo "<td><b><a class='text-warning' href=\"detail.php?pro_id=".$row->pro_id." \" title=\"".$row->pro_libelle."\">$row->pro_libelle</a></b></td>";
                    echo "<td>" . $row -> pro_prix . "€ </td>" ;
                    echo "<td>" . $row -> pro_stock . "</td>" ;
                    echo "<td>" . $row -> pro_couleur . "</td>" ;
                    echo "<td>" . $row -> pro_d_ajout . "</td>" ;
                    echo "<td>" . $row -> pro_d_modif . "</td>" ;
                    echo "<td>";
                        if ($row->pro_bloque == 1)
                        {
                        echo 'Oui';
                        }
                        echo "</td>" ;

                    echo "</tr>" ;
                }

                echo "</table>"
            ?>
    <footer class="navbar navbar-expand-lg navbar-dark border-light bg-secondary rounded">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item">
          <a class="nav-link text-light" href="#">mentions légales <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="#">horaires</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-light" href="#">plan du site</a>
          </li>
      </ul>
    </div>
</footer>
<br>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
    </script>
</body>

</html>