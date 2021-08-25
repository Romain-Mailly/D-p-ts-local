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

<body style="background-color: #243447;" class="text-white">
    <div class="container">


    <a href="Index.html" title="Accueil">
      <img src="jarditou_photos/jarditou_logo.jpg" alt="Logo Jarditou" title="Logo Jarditou" width="210" height="70">
    </a> 

        <h1 class="display-5 float-right text-light">Tout le jardin</h1>

        <nav class="navbar navbar-expand-lg navbar-light">
      <a class="navbar-brand text-light" href="Index.html">Jarditou.com</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link text-light" href="Index.html"><i class="fas fa-home"></i> Accueil <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
        <a class="nav-link text-light" href="liste.php"><i class="fas fa-list-ul"></i> Produits</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link text-light" href="Contact.html"><i class="far fa-user-circle"></i> Contact</a>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Votre promotion" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fas fa-search"></i> Rechercher</button>
        </form>
      </div>
    </nav>
        <img class="rounded" src="jarditou_photos/promotion.jpg" alt="Promotions" title="Promotions" width="100%">

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
            <br><br>
            <h1 class="text-light">Liste des produits</h1>
            <form action="produits_ajout_script.php" method="POST">
            <button class="btn btn-warning float-right" type="submit" name="ajout"><i class="fas fa-plus"></i> Ajout d'un produit</button>
            </form>

            <br><br>

            <table class="table table-striped table-hover col-12" style="background-color: #243447">
                <thead>
                    <tr>
                        <th><i class="far fa-image"></i><br> Photo</th>
                        <th><i class="far fa-id-card"></i><br> ID</th>
                        <th><i class="fas fa-clipboard-list"></i><br> Référence</th>
                        <th><i class="fas fa-signature"></i><br> Libellé</th>
                        <th><i class="fas fa-dollar-sign"></i><br> Prix</th>
                        <th><i class="fas fa-layer-group"></i><br> Stock</th>
                        <th><i class="fas fa-palette"></i><br> Couleur</th>
                        <th><i class="far fa-plus-square"></i><br> Date d'ajout</th>
                        <th><i class="fas fa-pencil-alt"></i><br> Dernière modif</th>
                        <th><i class="fas fa-unlock-alt"></i><br> Bloqué</th>
                    </tr>
                </thead> 
            <?php
                while ($row = $result -> fetch(PDO::FETCH_OBJ))
                {
                echo "<tr>" ;
                    echo '<td> <img class="img-fluid" src="jarditou_photos/' . $row->pro_id . '.' . $row->pro_photo . '" width="100px"> </td>';
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
        </div>
            <br>


            <footer class="navbar navbar-expand-lg navbar-dark border-light bg-light mg-5 ml-5 rounded">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item">
          <a class="nav-link text-dark" href="#"><i class="fas fa-list-ol"></i> Mentions légales <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark" href="#"><i class="far fa-clock"></i> Horaires</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-dark" href="#"><i class="far fa-map"></i> Plan du site</a>
          </li>
      </ul>
    </div>
</footer>
<br>
    <script src="https://kit.fontawesome.com/08f7104fd7.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/08f7104fd7.js" crossorigin="anonymous"></script>
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