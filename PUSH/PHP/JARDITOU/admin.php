<!-- PAGE VISIBLE QUE PAR MOI -->
<?php
// Appel des pages nécéssaires, connexion à la DB et création de la requête
$title = "Jarditou | Login" ;
require "header.php" ;
require "connexion_bdd.php" ;
$db = connexionBase() ; 
$requete = "SELECT * FROM users" ;
$result = $db -> query($requete) ;

if (!$result)
{
    $tableauErreur = $db -> errorInfo();
    echo $tableauErreur[2] ;
    die("Erreur dans la requête.") ;
}

if ($result -> rowCount() == 0)
{
    //Pas d'enregistrement
    die("La table est vide.") ;
}
?>

<br><br>
<!-- Création du tableau où vont être les données des profils créer sur le site -->
<table class="table table-hover table-stripped">
    <thead>
        <tr>
            <th>ID</th>
            <th>NOM</th>
            <th>PRÉNOM</th>
            <th>EMAIL</th>
            <th>LOGIN</th>
            <th>Date de création</th>
            <th>Date de dernière connexion</th>
            <th>ROLE</th>
        </tr>
    </thead>
    <tr>
        <!-- Scipt PHP qui va récuperer les données des profils dans la DB -->
        <?php
                while ($row = $result -> fetch(PDO::FETCH_OBJ))
                {
                echo "<tr>" ;
                    echo "<td>" . $row -> user_id . "</td>" ;
                    echo "<td>" . $row -> user_nom . "</td>" ;
                    echo "<td>" . $row -> user_prenom . "</td>" ;
                    echo "<td>" . $row -> user_email . "</td>" ;
                    echo "<td><a class='text-warning' href='modif_admin.php?user_id=" . $row -> user_id . "'>" . $row -> user_login . "</td>" ;
                    echo "<td>" . $row -> user_d_create . "</td>" ;
                    echo "<td>" . $row -> user_d_last . "</td>" ;
                    echo "<td>" . $row -> user_role . "</td>" ;
                }
        ?>
    </tr>
</table>




<?php require "footer.php" ; ?>