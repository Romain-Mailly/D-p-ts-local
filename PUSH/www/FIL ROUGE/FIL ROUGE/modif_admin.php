<?php
$title = "Jarditou | Login" ;
require "header.php" ;
require "connexion_db.php" ;
$user_id = $_GET["user_id"] ;
$db = connexionBase();
$requete = "SELECT * FROM users WHERE user_id = " . $user_id ;
$result = $db -> prepare($requete) ;
$result->execute() ;
$users = $result -> fetch(PDO::FETCH_OBJ) ;
?>
<br><br>

<form action="verif_modif_admin.php" method="POST">
    <div class="form-group">
        <label for="id">ID</label>
        <input class="form-control" name="id" id="id" value="<?php echo $users->user_id ; ?>" readonly>
    </div>

    <div class="form-group">
        <label for="nom">Nom</label>
        <input class="form-control" name="nom" id="nom" value="<?php echo $users->user_nom ; ?>" readonly>
    </div>

    <div class="form-group">
        <label for="prenom">Prénom</label>
        <input class="form-control" name="prenom" id="prenom" value="<?php echo $users->user_prenom ; ?>" readonly>
    </div>

    <div class="form-group">
        <label for="login">Login</label>
        <input class="form-control" name="login" id="login" value="<?php echo $users->user_login ; ?>" readonly>
    </div>

    <div class="form-group">
        <label for="mail">Email</label>
        <input class="form-control" name="mail" id="mail" value="<?php echo $users->user_email ; ?>" readonly>
    </div>

    <div class="form-group">
        <label for="create">Date de création du compte</label>
        <input class="form-control" name="create" id="create" value="<?php echo $users->user_d_create ; ?>" readonly>
    </div>

    <div class="form-group">
        <label for="last">Date de dernière connexion</label>
        <input class="form-control" name="last" id="last" value="<?php echo $users->user_d_last ; ?>" readonly>
    </div>

    <div class="form-group">
        <label for="role">Rôle</label>
        <input class="form-control <?php if(isset($_GET["error"])) {echo 'border border-danger' ;}?>" name="role" id="role" value="<?php echo $users->user_role ; ?>">
        <?php if(isset($_GET["error"])) {echo 'Le rôle n\'est pas bon.' ;}?>
    </div>
    <br>
    <button class="btn btn-info form-control" type="submit">Enregistrer</button> 
    <br><br>
    <button class="btn btn-danger form-control">Annuler</button>
    <br>






</form>



<br><br>



<?php require "footer.php" ; ?>