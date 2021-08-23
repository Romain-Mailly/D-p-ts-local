<?php
        //NOM
    if (preg_match("/^[a-zA-Zéèê]+$/", $_POST["nom"]) == false )
    {
        echo "Le nom n'a pas été renseigné ou comportes des caractères spéciaux." ;
    }

        //PRENOM
    elseif(preg_match("/^[a-zA-Zéèê]+$/", $_POST["prénom"]) == false)
    {
        echo "Le prénom n'a pas été renseigné ou comportes des caractères spéciaux." ;
    }

        //SEXE
    elseif(empty($_POST["sexe"]))
    {
        echo "Veuillez saisir un sexe." ;
    }

        //DATE DE NAISSANCE
    elseif(empty($_POST["ddn"]))
    {
        echo "La date de naissance n'a pas été renseignée." ;
    }

        //CODE POSTAL
    elseif(preg_match("/^[0-9]{5}$/", $_POST["cp"]) == false)
    {
        echo "Le code postal n'a pas été renseigné ou mal, il doit comporter 5 chiffres." ;
    }

        //EMAIL
    elseif (preg_match("/^[a-z0-9.-]+@[a-z0-9.-]{2,}.[a-z]{2,4}$/", $_POST["email"]) == false)
    {
        echo "L'email n'a pas été renseigné ou mal." ;
    }

        //SUJET
    elseif (empty($_POST["sujet"]))
    {
        echo "Le sujet n'a pas été renseigné." ;
    }

        //QUESTION
    elseif(empty($_POST["questions"]))
    {
        echo "Veuillez remplir le champ des questions." ;
    }

        //TRAITEMENT
    elseif(empty($_POST["traitement"]))
    {
        echo "Veuillez cocher la case pour Envoyer le formulaire." ;
    }

    else
    {
        echo "<pre>" ;
        print_r($_POST) ;
        echo "</pre>" ;
    }

    ?>