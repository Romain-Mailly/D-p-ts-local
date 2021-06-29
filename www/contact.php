<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0 shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Jarditou</title>
</head>
<body>
    <div class="container">

        <img src="jarditou_html_zip/images/jarditou_logo.jpg" alt="Logo Jarditou" title="Logo Jarditou" width="210" height="70">
    
    <h1 class="display-5 float-right">Tout le jardin</h1>
    
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">Jarditou.com</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="Index.html">Accueil <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Tableau.html">Tableau</a>
          </li>
          <li class="nav-item active">
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
  
    <form action="script.php" method="POST">
    <p>* Ces zones sont obligatoires </p>
    <br>
        <legend><p class="h3">Vos coordonnées</p></legend>

        <div class="form-group">
            <label for="nom">Votre nom* :</label>
            <input class="form-control" type="text" id="nom" name="nom">
        </div>

        

        <div class="form-group">
            <label for="prènom">Votre prènom* :</label>
            <input class="form-control" type="text" id="prènom" name="prènom">
        </div>

    

        <div class="form-group">
            <label for="sexe">Sexe* :</label>
            <input type="radio" id="sexe" name="sexe" value="Féminin">Féminin
            <input type="radio" name="sexe" value="Masculin">Masculin
            <input type="radio" name="sexe" value="Neutre">Neutre
        </div>

        
        <div class="form-group">
            <label for="ddn">Date de naissance* :</label>
            <input class="form-control" type="date" id="ddn" name="ddn" >
        </div>
       
        <div class="form-group">
            <label for="cp">Code postal* :</label>
            <input class="form-control" type="number" id="cp" name="cp" >
        </div>
       
        <div class="form-group">
            <label for="adresse">Adresse :</label>
            <input class="form-control" type="text" id="adresse" name="adresse">
        </div>
       
        <div class="form-group">
            <label for="ville">Ville :</label>
            <input class="form-control" type="text" id="ville" name="ville">
        </div>
       
        <div class="form-group">
            <label for="email">Email* :</label>
            <input class="form-control" type="email" id="email" name="email" placeholder="dave.loper@afpa.fr" >
        </div>


        <legend><p class="h3">Votre demande</p></legend>

        <div class="form-group">
        <label for="sujet">Sujet* :</label>
        <select class="form-control" id="sujet" name="sujet" >
            <option value="" selected disabled>Veuillez séléctionner un sujet</option>
            <option value="Commandes">Mes commandes</option>
            <option value="Questions">Questions sur un produit</option>
            <option value="Réclamation">Réclamations</option>
            <option value="Autres">Autres</option>
        </select>
        </div>

        <div class="form-group">
            <label for="questions">Votre question* :</label>
            <textarea class="form-control" id="questions" name="questions"></textarea>
        </div>
    
        <div class="form-group">
            <input type="checkbox" id="traitement" name="traitement">
            <label for="traitement">* J'accepte le traitement informatique de ce formulaire</label>
        </div>
    
    <button class="btn btn-dark" type="submit" id="envoyer" name="envoyer" value="Envoyer">Envoyer</button>
    <button class="btn btn-dark" type="reset" id="annuler" name="annuler" value="Annuler">Annuler</button>
    </form>
    <br>
    <footer class="navbar navbar-expand-lg navbar-dark bg-dark rounded">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item">
              <a class="nav-link" href="#">mentions légales <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">horaires</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">plan du site</a>
              </li>
          </ul>
        </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</div>
</body>
</html>