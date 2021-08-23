<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    <div class="container">
    <img src="jarditou_html_zip/images/jarditou_logo.jpg" alt="Logo Jarditou" title="Logo Jarditou" width="210"
            height="70">

        <h1 class="display-5 float-right">Tout le jardin</h1>

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Jarditou.com</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="Index.html">Accueil <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="Tableau.html">Tableau</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="Contact.html">Contact</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="text" placeholder="Votre promotion" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Rechercher</button>
                </form>
            </div>
        </nav>

<img src="jarditou_html_zip/images/promotion.jpg" alt="Promotions" title="Promotions" width="100%">
    
    <?php
    require "connexion_bdd.php" ;
    $db = connexionBase() ;
    $requete = "" ;
    $result = $db->query($requete) ;
    ?>

    <form class="form-group">
        <label for="id">ID</label>
        <input class="form-control" name="id" id="id" type="text">
    </form>

    <form class="form-group">
        <label for="ref">Référence</label>
        <input name="ref" id="ref" type="text">
    </form> 

    <form class="form-group">
        <label for="libelle">Libellé</label>
        <input name="libelle" id="libelle" type="text">
    </form>

    <form class="form-group">
        <label for="prix">Prix</label>
        <input name="prix" id="prix" type="text">
    </form>

    <form class="form-group">    
        <label for="stock">Stock</label>
        <input name="stock" id="stock" type="text">
    </form>

    <form class="form-group">
        <label for="couleur">Couleur</label>
        <input name="couleur" id="couleur" type="text">
    </form>

    <form class="form-group">
        <label for="ajout">Date d'ajout</label>
        <input name="ajout" id="ajout" type="text">
    </form>

    <form class="form-group">
        <label for="modif">Date de modification</label>
        <input name="modif" id="modif" type="text">
    </form>

    <form class="form-group">
        <label for="bloque">Bloque</label>
        <input name="bloque" id="bloque" type="text">
    </form>






</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>