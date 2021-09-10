<?php
$title = "Jarditou | Profil" ;
require "header.php" ;

require "connexion_bdd.php" ;
$db = connexionBase() ;
$login = $_SESSION["login"] ;
$requete = "SELECT * FROM users WHERE user_login = '$login'" ;
$result = $db->prepare($requete) ;
$result->execute() ;
?>

<br><br>

<?php
    while ($row = $result->fetch(PDO::FETCH_OBJ))
    {
        echo '<div class="card text-center border-light pt-1" style="background-color: #243447;"' ;
            echo '<div class="card-body">' ;
              echo '<h4 class="card-title">' . $row -> user_login . '</h4>' ;
              echo '<p>RÔLE : ' . $_SESSION["role"] . '</p>' ;
              echo '<p>NOM : ' . $row->user_nom . '</p>' ;
              echo '<p>PRÉNOM : ' . $row->user_prenom . '</p>' ;
              echo '<p>MAIL : ' . $row->user_email . '</p>' ;
              echo '<p>Date de création du compte : ' . $row->user_d_create . '</p>' ;
              echo '<p class="card-text"><small class="text-muted">Dernière connexion le : ' . $row->user_d_last . '</small></p>' ;
            echo '</div>' ;
        echo '</div>' ;
    }
?>         

<br>

<div class="container">
    <?php require "footer.php" ;?>
</div>