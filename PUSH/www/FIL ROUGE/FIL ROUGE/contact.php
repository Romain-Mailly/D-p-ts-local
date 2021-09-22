<!-- Script de la page de formulaire de contact -->
<!-- Appel du header -->
<?php require "header.php" ?>

<!-- Création du formulaire de contact -->
<form action="verif_contact.php" method="POST">

    <legend><p class="h3">Vos coordonnées</p></legend>
    <hr class="bg-dark">


    <!-- NOM -->
    <div class="form-floating mb-3">
        <input type="text" class="form-control <?php if(isset($_GET["enom"])) {echo 'is-invalid' ;} ?>" name="nom" id="nom" placeholder=" ">
        <label for="nom">Nom :</label>
        <?php if (isset($_GET["enom"])) {echo '<i><i class="bi bi-exclamation-diamond-fill"></i> Veuillez saisir un nom correct (max. 30)' ;} ?>
    </div>

    <!-- PRÉNOM -->
    <div class="form-floating mb-3">
        <input type="text" class="form-control <?php if (isset($_GET["epre"])) {echo 'is-invalid' ;} ?> name="prenom" id="prenom" placeholder=" ">
        <label for="prenom">Prénom :</label>
        <?php if (isset($_GET["epre"])) {echo '<i><i class="bi bi-exclamation-diamond-fill"></i> Veuillez saisir un prénom correct (max. 30)' ;} ?>
    </div>

    <!-- SEXE -->
    <div class="card">
        <div class="card-body">
            <label for="sexe">Sexe :</label>
            <input type="radio" name="sexe" id="sexe" <?php if (isset($_GET["esex"])) {echo 'class="is-invalid"' ;} ?> > Masculin
            <input type="radio" name="sexe"> Féminin
        </div>
    </div>
        <?php if (isset($_GET["esex"])) {echo 'class="bi bi-exclamation-diamond-fill"></i> Veuillez saisir un sexe</i>"' ;} ?>
        <br><br>

    <!-- Date de naissance -->
    <div class="form-floating mb-3">
        <input type="date" class="form-control <?php if(isset($_GET["eddn"])) {echo 'is-invalid' ;} ?>" name="ddn" id="ddn" placeholder="">
        <label for="ddn">Date de naissance</label>
        <?php if(isset($_GET["eddn"])) {echo '<i><i class="bi bi-exclamation-diamond-fill"></i> Veuillez saisir une date de naissance</i>' ;} ?>
    </div>

    <!-- EMAIL -->
    <div class="form-floating mb-3">
        <input type="email" class="form-control <?php if(isset($_GET["email"])) {echo 'is-invalid' ;} ?>" name="mail" id="mail" placeholder=" ">
        <label for="mail">Email :</label>
        <?php if(isset($_GET["email"])) {echo '<i><i class="bi bi-exclamation-diamond-fill"></i> Veuillez saisir un email correct (max. 50)</i>' ;} ?>
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
    <select class="form-control <?php if(isset($_GET["esuj"])) {echo "is-invalid";} ?>">
        <option value="" selected disabled>-- Veuillez sélectionner un sujet --</option>
        <option value="commandes">Mes commandes</option>
        <option value="questions">Vos questions</option>
        <option value="reclamations">Réclamations</option>
        <option value="autres">Autres</option>
    </select>
        <?php if(isset($_GET["esuj"])) {echo '<i><i class="bi bi-exclamation-diamond-fill"></i>Veuillez sélectionner un sujet</i>' ;} ?>

        <br><br>

    <!-- Zone de texte pour poser une question -->
    <div class="form form-floating mb-3">
        <textarea class="form-control <?php if (isset($_GET["eque"])) {echo "is-invalid" ;} ?>" placeholder=" "></textarea>
        <label for="question">Posez votre question ici :</label>
        <?php if(isset($_GET["eque"])) {echo '<i><i class="bi bi-exclamation-diamond-fill"></i> Veuillez sélectionner un sujet</i>' ;} ?>
    </div>

    <!-- Checkbox pour le traitement de informatique -->
    <div class="form-group">
        <input type="checkbox" name="traitement" id="traitement">
        <label for="traitement">* J'accepte le traitement informatique de ce formulaire</label>
    </div>

    <br>

    <!-- Buttons qui envoient ou annulent le formulaire -->
    <button type="submit" class="btn btn-success">Envoyer</button>
    <button type="reset" class="btn btn-danger">Annuler</button>
</form>





<!-- Appel du footer -->
<?php require "footer.php" ; ?>