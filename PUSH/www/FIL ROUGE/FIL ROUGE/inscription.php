<?php
$title = 'Jarditou | Inscription' ;
require "header.php" ;
?>
<br><br>
<h1>Inscription</h1>
<hr class="bg-light">
<br>


<form action="verif_inscription.php" method="POST">

        <!-- Nom -->
    <div class="form-floating mb-3">
        <input class="form-control <?php if (isset($_GET["enom"])) {echo "border border-danger";}?>" name="nom" id="nom" type="text" placeholder=" ">
        <?php if (isset($_GET["enom"])) {echo "Veuillez saisir un nom valide.";}?>
        <label for="nom">Nom :</label>
    </div>

    <!-- Prénom -->
    <div class="form-floating mb-3">
        <input class="form-control <?php if (isset($_GET["epre"])) {echo "border border-danger";}?>" name="prenom" id="prenom" type="text" placeholder=" ">
        <?php if (isset($_GET["epre"])) {echo "Veuillez saisir un prénom valide.";}?>
        <label for="prenom">Prénom :</label>
    </div>
    <!-- Date de naissance -->
    <div class="form-floating mb-3">
       <input class="form-control <?php if (isset($_GET["eddn"])) {echo "border border-danger";}?>" name="ddn" id="ddn" type="date">
       <?php if (isset($_GET["eddn"])) {echo "Veuillez saisir une date de naissance.";}?>
       <label for="ddn">Date de naissance :</label>
    </div>

    <!-- Pays -->
    <div class="form-floating mb-3">
        <input class="form-control <?php if (isset($_GET["epays"])) {echo "border border-danger";}?>" name="pays" id="pays" type="text" placeholder=" ">
        <?php if (isset($_GET["epays"])) {echo "Veuillez saisir un email valide.";}?>
        <label for="pays">Pays :</label>
    </div>

    <!-- Login -->
    <div class="form-floating mb-3">
        <input class="form-control <?php if (isset($_GET["elog"])) {echo "border border-danger";}?>" name="login" id="login" type="text" placeholder=" ">
        <?php if (isset($_GET["elog"])) {echo "Veuillez saisir un login valide.";}?>
        <label for="login">Login :</label>
    </div>

    <!-- Email -->
    <div class="form-floating mb-3">
        <input class="form-control <?php if (isset($_GET["email"])) {echo "border border-danger";}?>" name="mail" id="mail" type="email" placeholder=" ">
        <?php if (isset($_GET["email"])) {echo "Veuillez saisir un email valide.";}?>
        <label for="mail">Email :</label>
    </div>

    <!-- Mot de passe -->
    <div class="form-floating mb-3">
        <input class="form-control <?php if (isset($_GET["emdp"])) {echo "border border-danger";}?>" name="mdp" id="mdp" type="password" placeholder=" ">
        <?php if (isset($_GET["emdp"])) {echo "Veuillez saisir un mot de passe valide.";}?>
        <label for="mdp">Mot de passe :</label>
    </div>

    <br>

    <a class="btn btn-dark" href="index.php"><i class="bi bi-arrow-left"></i> Retour à l'accueil</a>
    <button type="submit" class="btn btn-warning"><i class="fas fa-share"></i> Enregistrer</button>
</form>

<br>

<?php require "footer.php" ; ?>
