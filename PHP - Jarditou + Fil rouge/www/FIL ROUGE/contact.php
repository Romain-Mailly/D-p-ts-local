<!-- Script de la page de formulaire de contact -->
<!-- Appel du header -->
<?php require "header.php" ?>

<!-- Création du formulaire de contact -->
<form action="verif_contact.php" method="POST">

    <legend><p class="h3">Vos coordonnées</p></legend>
    <hr class="bg-dark">


    <!-- NOM -->
    <div class="form-floating mb-3">
        <input type="text" class="form-control <?php if(isset($_GET["enom"])) {echo 'border border-danger' ;} ?>" name="nom" id="nom" placeholder=" ">
        <label for="nom">Nom :</label>
        <?php if (isset($_GET["enom"])) {echo "Veuillez saisir un nom correct (max.30)" ;} ?>
    </div>

    <!-- PRÉNOM -->
    <div class="form-floating mb-3">
        <input type="text" class="form-control <?php if (isset($_GET["epre"])) {echo 'border border-danger' ;} ?> name="prenom" id="prenom" placeholder=" ">
        <label for="prenom">Prénom :</label>
        <?php if (isset($_GET["epre"])) {echo "Veuillez saisir un prénom correct (max.30)" ;} ?>
    </div>

    <!-- SEXE -->
    <div class="card mb-3">
        <div class="card-body">
            <label for="sexe">Sexe :</label>
            <input type="radio" name="sexe" id="sexe" <?php if (isset($_GET["esexe"])) {echo 'class="border border-danger"' ;} ?> > Masculin
            <input type="radio" name="sexe"> Féminin
        </div>
    </div>

    <!-- Date de naissance -->
    <div class="form-floating mb-3">
        <input type="date" class="form-control <?php if(isset($_GET["eddn"])) {echo 'border border-danger' ;} ?>" name="ddn" id="ddn" placeholder="">
        <label for="ddn">Date de naissance</label>
        <?php if(isset($_GET["eddn"])) {echo 'Veuillez saisir une date de naissance' ;} ?>
    </div>

    <!-- EMAIL -->
    <div class="form-floating mb-3">
        <input type="email" class="form-control <?php if(isset($_GET["email"])) {echo 'border border-danger' ;} ?>" name="mail" id="mail" placeholder=" ">
        <label for="mail">Email :</label>
        <?php if(isset($_GET["email"])) {echo 'Veuillez saisir un email correct (max.50)' ;} ?>
    </div>

    <!-- VILLE -->
    <div class="form-floating mb-3">
        <input type="text" class="form-control" name="ville" id="ville" placeholder=" " >
        <label for="ville">Ville :</label>
    </div>

    <!-- Code Postal -->
    <div class="form form-floating mb-3">
        <input type="number" class="form-control" name="cp" id="cp" placeholder=" ">
        <label for="cp">Code Postal :</label>
    </div>

    <!-- Pays -->
    <div class="form form-floating mb-3">
        <input type="text" class="form-control" name="pays" id="pays" placeholder=" ">
        <label for="pays">Pays :</label>
    </div>

    <!-- Adresse -->
    <div class="form form-floating mb-5">
        <input type="text" class="form-control" name="adresse" id="adresse" placeholder=" ">
        <label for="adresse">Adresse :</label>
    </div>
    
    <legend><p class="h3">Votre demande</p></legend>
    <hr class="bg-dark">

    <!-- Liste des sujets -->
    <select class="form-control mb-3">
        <option value="" selected disabled>-- Veuillez sélectionner un sujet --</option>
        <option value="commandes">Mes commandes</option>
        <option value="questions">Vos questions</option>
        <option value="reclamations">Réclamations</option>
        <option value="autres">Autres</option>
    </select>

    <!-- Zone de texte pour poser une question -->
    <div class="form form-floating mb-3">
        <textarea class="form-control" placeholder=" "></textarea>
        <label for="question">Posez votre question ici :</label>
    </div>
</form>




<!-- Appel du footer -->
<?php require "footer.php" ?>