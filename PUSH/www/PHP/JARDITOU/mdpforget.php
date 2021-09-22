<?php
$title = "Jarditou | Mot de passe oublié" ;
require "header.php" ;
require "connexion_bdd.php" ;
$bd = connexionBase() ;
?>
<br><br>
<h1>Mot de passe oublié</h1>
<hr class="bg-light">
<form action="verif_mdpforget" method="POST">
    <div class="form-group">
        <label for="mail">Email :</label>
        <input type="text" class="form-control" id="mail" name="mail" placeholder="Veuillez saisir votre adresse email...">
    </div>
    <button class="btn btn-success" type="submit">Envoyer</button>
</form>

