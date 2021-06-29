<?php
// NOM
    if (preg_match("/^[a-zéèêA-Z]+$/", $_POST["nom"]) == false)
    {
        echo "Le nom n'a pas été renseigné.";
    }

//PRENOM
    elseif (preg_match("/^[a-zéèêA-Z]+$/", $_POST["prènom"]) == false)
    {
        echo "Le prénom n'a pas été renseigné.";
    }

//Sexe
    elseif (empty($_POST["sexe"]))
    {
        echo "La sexe n'a pas été renseigné.";
    }

//Date de naissance
    elseif (empty($_POST["ddn"]))
    {
        echo "La date de naissance n'a pas été renseigné.";
    }

//Code Postal
    elseif (preg_match("/^[0-9]{5}$/", $_POST["cp"])==false)
    {
        echo "Le code postal n'a pas été renseigné ou il ne contient pas 6 chiffres.";
    }

//Email
    elseif (empty($_POST["email"]))
    {
        echo "L'email n'a pas été renseigné ou le format est invalide.";
    }

//Sujet
    elseif (empty($_POST["sujet"]))
    {
        echo "Veuillez sélectionner un sujet.";
    }

//Questions
    elseif (empty($_POST["questions"]))
    {
        echo "Veuillez poser une question.";
    }

//Traitement informatique
    elseif (empty($_POST["traitement"]))
    {
        echo "Veuillez acceptez le traitement des données.";
    }

else
{
    echo "<pre>";
    print_r($_POST);
    echo "</pre>";
}
?>


<html>
<h1>MAIS C'EST INROYAAAABLE</h1>
</html>