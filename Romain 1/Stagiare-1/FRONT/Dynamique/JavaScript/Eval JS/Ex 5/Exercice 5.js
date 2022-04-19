var filtre1 = new RegExp("^[a-zA-Z]+$");
var filtre2 = new RegExp("^[0-9]{5}$");
var filtre3 = new RegExp("^[a-z0-9.-]+@[a-z0-9.-]{2,}.[a-z]{2,4}$")


function checking() {
    var nom = document.getElementById("nom").value;
    var prenom = document.getElementById("prenom").value;
    var homme = document.getElementById("homme").checked;
    var femme = document.getElementById("femme").checked;
    var neutre = document.getElementById("neutre").checked;
    var ddn = document.getElementById("ddn").value;
    var cp = document.getElementById("cp").value;
    var email = document.getElementById("email").value;
    var sujet = document.getElementById("sujet").value;
    var question = document.getElementById("question").value;
    var traitement = document.getElementById("traitement").checked;



    document.getElementById("last_nameError").innerHTML = "";
    document.getElementById("nameError").innerHTML = "";
    document.getElementById("sexError").innerHTML = "";
    document.getElementById("ddnError").innerHTML = "";
    document.getElementById("cpError").innerHTML = "";
    document.getElementById("emailError").innerHTML = "";
    document.getElementById("sujetError").innerHTML = "";
    document.getElementById("questionError").innerHTML = "";
    document.getElementById("traitementError").innerHTML = "";



    // Checking du nom :
    if (filtre1.test(nom) == false) {
        document.getElementById("last_nameError").innerHTML = "Veuillez saisir un nom correct !";
        return false;
    }
    // Checking du prénom :
    else if (filtre1.test(prenom) == false) {
        document.getElementById("nameError").innerHTML = "Veuillez saisir un prénom correct !";
        return false;
    }

    // Checking du sexe :
    else if (homme == false && femme == false && neutre == false) {
        document.getElementById("sexError").innerHTML = "Veuillez saisir votre sexe !";
        return false;
    }

    // Checking de la Date de Naissance
    else if (ddn == "") {
        document.getElementById("ddnError").innerHTML = "Veuillez saisir votre Date de Naissance !";
        return false;
    }

    // Checking du Code Postal
    else if (filtre2.test(cp) == false) {
        document.getElementById("cpError").innerHTML = "Veuillez saisir un Code Postal à 5 chiffres !";
        return false;
    }
    // Checking Adresse Mail
    else if (filtre3.test(email) == false) {
        document.getElementById("emailError").innerHTML = "Veuillez saisir une adresse correcte !";
        return false;
    }

    // Checking de la séléction du sujet :
    else if (sujet == "") {
        document.getElementById("sujetError").innerHTML = "Veuillez choisir un sujet !";
        return false;
    }

    // Checking de la question :
    else if (question == "") {
        document.getElementById("questionError").innerHTML = "Veuillez posez une question !";
        return false;
    }

    // Checking de la chekcbox :
    else if (traitement == false) {
        document.getElementById("traitementError").innerHTML = "Veuillez cochez la case !";
        return false;
    } else {
        return true;
    }

}
document.write('<div class="text-light"> Vous pouvez fermer cette page et retourner au menu des exercices !');