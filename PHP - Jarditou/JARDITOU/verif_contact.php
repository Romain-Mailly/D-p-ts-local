<?php
$erreurs = "" ;



        //NOM
    if (!preg_match("/^[a-zA-Zéèê]{1,30}$/", $_POST["nom"]))
    {
        $erreurs .= "&enom" ;
        header("Location: contact.php?$erreurs") ;
    }

        //PRENOM
    if(!preg_match("/^[a-zA-Zéèê]{1,30}$/", $_POST["prenom"]))
    {
        $erreurs .= "&eprenom" ;
        header("Location: contact.php?$erreurs") ;
    }

        //SEXE
    if(empty($_POST["sexe"]))
    {
        $erreurs .= "&esexe" ;
        header("Location: contact.php?$erreurs") ;
    }

        //DATE DE NAISSANCE
    if(empty($_POST["ddn"]))
    {
        $erreurs .= "&eddn" ;
        header("Location: contact.php?$erreurs") ;
    }

        //CODE POSTAL
    if(!preg_match("/^[0-9]{5}$/", $_POST["cp"]))
    {
        $erreurs .= "&ecp" ;
        header("Location: contact.php?$erreurs") ;
    }

        //EMAIL
    if (!preg_match("/^[a-z0-9.-]+@[a-z0-9.-]{2,}.[a-z]{2,4}$/", $_POST["email"]))
    {
        $erreurs .= "&email" ;
        header("Location: contact.php?$erreurs") ;
    }

        //SUJET
    if (is_null($_POST["sujet"]))
    {
      $erreurs .= "&esujet" ;
      header("Location: contact.php?$erreurs") ;
    }

        //QUESTION
    if(empty($_POST["questions"]))
    {
        $erreurs .= "&eque" ;
        header("Location: contact.php?$erreurs") ;
    }

        //TRAITEMENT
    if(empty($_POST["traitement"]))
    {
        $erreurs .= "&etrait" ;
        header("Location: contact.php?$erreurs") ;
    }

    else
    {
        header("Location: index.php") ;
        exit ;
    }

    ?>