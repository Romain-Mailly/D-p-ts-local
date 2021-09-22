<?php
session_start();
// Création d'une variable pour les erreurs
$erreurs = "" ;

// NOM
if (!preg_match("/^[a-zA-Z](1,30)$/", $_POST["nom"]))
{
    $erreurs .= "&enom" ;
    header ("Location: contact.php?$erreurs") ;
}

// PRÉNOM
if (!preg_match("/^[a-zA-Z](1,30)$/", $_POST["prenom"]))
{
    $erreurs .= "&epre" ;
    header ("Location: contact.php?$erreurs") ;
}

// SEXE
if (empty($_POST["sexe"]))
{
    $erreurs .= "&esex" ;
    header ("Location: contact.php?$erreurs") ;
}

// DATE DE NAISSANCE
if (empty($_POST["ddn"]))
{
    $erreurs .= "&eddn" ;
    header ("Location: contact.php?$erreurs") ;
}

// EMAIL
if (!preg_match("/^[a-z0-9.-]+@[a-z0-9.-]{2,}.[a-z]{2,4}$/", $_POST["email"]))
{
    $erreurs .= "&email" ;
    header ("Location: contact.php?$erreurs") ;
}

// SUJET
if (empty($_POST["sujet"]))
{
    $erreurs .= "&esuj" ;
    header ("Location: contact.php?$erreurs") ;
}

// QUESTION
if (empty($_POST["eque"]))
{
    $erreurs .= "&eque" ;
    header ("Location: contact.php?$erreurs") ;
}


?>