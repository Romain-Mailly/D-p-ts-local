<?php
session_start();

require 'connexion_db.php';

$db = connexionBase();

$requete = 'SELECT * FROM users WHERE user_email = ?';
$req = $db->prepare($requete);
$req->bindValue(1, $_POST['accountEmail']);
$req->execute();
$user = $req->fetch(PDO::FETCH_OBJ);
$row = $req->rowCount();
$req->closeCursor();

if ($row != 1) {
    header('index.php');
    exit;
}
else {
    if (password_verify($_POST['accountPassword'], $user->user_password)) {
        $_SESSION['id'] = $user->user_id;
        $_SESSION['login'] = $user->user_firstname;
        $_SESSION['role'] = $user->user_role_id;
        header('index.php');
    }
    else {
        header('index.php?econnexion');
        exit;
    }
}
?>