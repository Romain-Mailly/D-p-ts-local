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
    <div class="form-group">
        <label for="nom">Nom :</label>
        <input class="form-control <?php if (isset($_GET["enom"])) {echo "border border-danger";}?>" name="nom" id="nom" type="text" placeholder="Loper">
        <?php if (isset($_GET["enom"])) {echo "Veuillez saisir un nom valide.";}?>
    </div>

    <!-- Prénom -->
    <div class="form-group">
        <label for="prenom">Prénom :</label>
        <input class="form-control <?php if (isset($_GET["epre"])) {echo "border border-danger";}?>" name="prenom" id="prenom" type="text" placeholder="Dave">
        <?php if (isset($_GET["epre"])) {echo "Veuillez saisir un prénom valide.";}?>
    </div>

    <!-- Login -->
    <div class="form-group">
        <label for="login">Login :</label>
        <input class="form-control <?php if (isset($_GET["elog"])) {echo "border border-danger";}?>" name="login" id="login" type="text" placeholder="Dave_Loper">
        <?php if (isset($_GET["elog"])) {echo "Veuillez saisir un login valide.";}?>
    </div>

    <!-- Email -->
    <div class="form-group">
        <label for="mail">Email :</label>
        <input class="form-control <?php if (isset($_GET["email"])) {echo "border border-danger";}?>" name="mail" id="mail" type="email" placeholder="dave.loper@afpa.fr">
        <?php if (isset($_GET["email"])) {echo "Veuillez saisir un email valide.";}?>
    </div>

    <!-- Mot de passe -->
    <div class="form-group">
        <label for="mdp">Mot de passe :</label>
        <input class="form-control <?php if (isset($_GET["emdp"])) {echo "border border-danger";}?>" name="mdp" id="mdp" type="password" placeholder="Password123!">
        <?php if (isset($_GET["emdp"])) {echo "Veuillez saisir un mot de passe valide.";}?>
    </div>
    
    <br>

    <button type="submit" class="btn btn-success"><i class="fas fa-share"></i> Enregistrer</button>
</form>

<br>

<?php require "footer.php" ; ?>
