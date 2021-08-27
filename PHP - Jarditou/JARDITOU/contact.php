<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0 shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Jarditou-Contact</title>
</head>
<body style="background-color: #243447;" class="text-white">
    <div class="container">

      <a href="index.php" title="Accueil">
        <img src="jarditou_photos/jarditou_logo.jpg" alt="Logo Jarditou" title="Logo Jarditou" width="210" height="70">
      </a> 
    
    <h1 class="display-5 float-right text-light">Tout le jardin</h1>
    
    <nav class="navbar navbar-expand-lg navbar-light">
  <a class="navbar-brand text-light" href="index.php"><span class="text-success">Jarditou</span><span class="text-danger">.com</span></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
        <li class="nav-item">
        <a class="nav-link text-light" href="index.php"><i class="fas fa-home"></i> Accueil <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link text-light" href="liste.php"><i class="fas fa-list-ul"></i> Produits</a>
      </li>
      <li class="nav-item ">
        <a class="nav-link text-light" href="contact.php"><i class="far fa-user-circle"></i> Contact</a>
      </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Votre promotion" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fas fa-search"></i> Rechercher</button>
        </form>
      </div>
    </nav>
    
    <img src="jarditou_photos/promotion.jpg" class="rounded" alt="Promotions" title="Promotions" width="100%">
  
    <form action="verif_contact.php" method="POST">
    <p class="text-light">* Ces zones sont obligatoires </p>
    <br>
        <legend><p class="h3 text-light">Vos coordonnées</p></legend>

        <div class="form-group">
            <label class="text-light" for="nom">Votre nom* :</label>
            <input class="form-control <?php if (isset($_GET['enom'])) {echo 'border border-danger' ; }?>" type="text" id="nom" name="nom" placeholder="Veuillez renseigner votre nom...">
            <?php if (isset($_GET['enom'])) {echo "<i>Le nom n'a pas été renseigné ou comporte des caractères spéciaux.</i><br>" ;} ?>        
        </div>

        

        <div class="form-group">
            <label  class="text-light"for="prenom">Votre prénom* :</label>
            <input class="form-control <?php if (isset($_GET['eprenom'])) {echo 'border border-danger' ; }?>" type="text" id="prenom" name="prenom" placeholder="Veuillez renseigner votre prénom...">
            <?php if (isset($_GET['eprenom'])) {echo "<i>Le prénom n'a pas été renseigné ou comporte des caractères spéciaux.</i><br>" ; } ?> 
        </div>

    

        <div class="form-group">
            <label  class="text-light"for="sexe">Sexe* :</label>
            <input type="radio" id="sexe" name="sexe" value="Féminin"> <span class="text-light">Féminin</span>
            <input type="radio" name="sexe" value="Masculin" > <span class="text-light">Masculin</span>
            <input type="radio" name="sexe" value="Neutre" > <span class="text-light">Neutre</span>
            <br>
            <?php if (isset($_GET['esexe'])) {echo "<i>Veuillez saisir le sexe.</i><br>" ;} ?>
        </div>

        
        <div class="form-group">
            <label  class="text-light"for="ddn">Date de naissance* :</label>
            <input class="form-control" type="date" id="ddn" name="ddn" >
            <?php if (isset($_GET['eddn'])) {echo "<i>Veuillez saisir une date de naissance valide.</i><br>" ;} ?>
        </div>
       
        <div class="form-group">
            <label  class="text-light"for="cp">Code postal* :</label>
            <input class="form-control" type="number" id="cp" name="cp" placeholder="Veuillez renseigner votre code postal...">
            <?php if (isset($_GET['ecp'])) {echo "<i>Veuillez saisir un code postal valide.</i><br>" ;} ?>
        </div>
       
        <div class="form-group">
            <label  class="text-light"for="adresse">Adresse :</label>
            <input class="form-control" type="text" id="adresse" name="adresse">
        </div>
       
        <div class="form-group">
            <label  class="text-light"for="ville">Ville :</label>
            <input class="form-control" type="text" id="ville" name="ville">
        </div>
       
        <div class="form-group">
            <label  class="text-light"for="email">Email* :</label>
            <input class="form-control" type="email" id="email" name="email" placeholder="dave.loper@afpa.fr" >
            <?php if (isset($_GET['email'])) {echo "<i>Veuillez saisir une adresse mail valide.</i><br>" ;} ?>
        </div>


        <legend><p class="h3 text-light">Votre demande</p></legend>

        <div class="form-group">
        <label  class="text-light"for="sujet">Sujet* :</label>
        <select class="form-control" id="sujet" name="sujet">
            <option value="" selected disabled>Veuillez sélectionner un sujet</option>
            <option value="Commandes">Mes commandes</option>
            <option value="Questions">Questions sur un produit</option>
            <option value="Réclamation">Réclamations</option>
            <option value="Autres">Autres</option>
        </select>
        <?php if (isset($_GET['esujet'])) {echo "<i>Le sujet n'a pas été sélectionné.</i><br>" ;} ?>
        </div>

        <div class="form-group">
            <label  class="text-light"for="questions">Votre question* :</label>
            <textarea class="form-control" id="questions" name="questions" placeholder="Veuillez renseigner votre question..."></textarea>
            <?php if (isset($_GET['eque'])) {echo "<i>Le champ n'a pas été rempli.</i><br>" ;} ?>
        </div>
    
        <div class="form-group">
            <input type="checkbox" id="traitement" name="traitement">
            <label  class="text-light"for="traitement">* J'accepte le traitement informatique de ce formulaire</label>
            <br>
            <?php if (isset($_GET['etrait'])) {echo "<i>Veuillez cochez la case.</i><br>" ;} ?>
        </div>
    
    <button class="btn btn-warning" type="submit" id="envoyer" name="envoyer" value="Envoyer">Envoyer</button>
    <button class="btn btn-secondary" type="reset" id="annuler" name="annuler" value="Annuler">Annuler</button>

    </form>
    <br>
    <footer class="navbar navbar-expand-lg navbar-dark border-light bg-light rounded">
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
  <script src="https://kit.fontawesome.com/08f7104fd7.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</div>
</body>
</html>