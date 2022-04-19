// Exercice 1 -

var bouton1 = document.getElementById("Id_btn1");
bouton1.addEventListener("click", clickbtn1);

function clickbtn1() {

    var n;
    var j = 0;
    var m = 0;
    var v = 0;


    do {
        //On demande de rentrer l'âge :
        var n = parseInt(window.prompt("Veuillez entrez un âge :"));
        // jeune
        if (n < 20) {
            j++;

        }
        // moyen
        else if (n >= 20 && n <= 40) {
            m++;
        }
        // vieux
        else {
            v++;
        }


    } while (n < 100)
    alert(" Il y a " + j + " personne(s) jeune(s).\n Il y a " + m + " personne(s) d'âge moyens(s). \n Il y a " + v + " vieux, dont 1 centenaire.");
}


// Exercice 2 -

var bouton2 = document.getElementById("Id_btn2");
bouton2.addEventListener("click", clickbtn2);

function clickbtn2() {

    var x;
    var i = 1;
    var result;

    function multiplicationTable() {
        var x = parseInt(window.prompt("Veuillez saisir la table de multipication que vous souhaitez avoir :"));
        while (i != 11) {
            result = i * x;
            document.write(x + " x " + i + " = " + result + "<br>");
            i++;
        }
        document.write("<br> <br> <i> Quand vous avez terminé, presse la touche F5 pour revenir au menu des exercices.</i>")
    }

    multiplicationTable();
}


// Exercice 3 -

var bouton3 = document.getElementById("Id_btn3");
bouton3.addEventListener("click", clickbtn3);

function clickbtn3() {

    var prenom;
    var tab = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"];
    alert("Avant toute chose, pressez F12, allez dans la console, et verifiez le tableau :")
    console.log(tab);
    prenom = window.prompt("À présent, veuillez saisir un prénom, si il figure dans le tableau, le prénom disparaîtra, sinon, un message d'erreur s'affichera :");
    var index = tab.indexOf(prenom);
    if (index > -1) {
        tab.splice(index, 1);
        tab.push(" ");
        console.log(tab);
    } else {
        alert("Ce prénom ne figure pas dans le tableau.");
        console.log(tab);
    }
}


// Exercice 4 -

var bouton4 = document.getElementById("Id_btn4");
bouton4.addEventListener("click", clickbtn4);

function clickbtn4() {

    var TOT = 0;
    var PU = parseInt(window.prompt("Veuillez saisir le prix unitaire de l'article :"));
    var QTECOM = parseInt(window.prompt("Veuillez saisir la quantité d'article :"));
    var PAP = 0;
    var REM = 0;
    var PORT = 0;

    //
    TOT = PU * QTECOM;

    //Calcul dU prix à payer après la remise -
    if (TOT >= 100 && TOT <= 200) {
        PAP = TOT * (1 - 0.05);
        REM = 5;
    } else if (TOT > 200) {
        PAP = TOT * (1 - 0.1);
        REM = 10;
    }

    // Calcul des frais de port -
    if (PAP > 500) {
        PORT = 0;
    } else if (PAP <= 500) {
        PORT = (PU * (1 + 0.02));
        PORT = PORT - PU;
    }
    if (PORT < 6 && PORT > 0) {
        PORT = 6;
    }
    if (REM == 0) {
        PAP = PU;
    }

    //Calcul du prix avec les frais de port - 
    PAP = PAP + PORT;


    if (QTECOM == 0) {
        PAP = 0;
        PORT = 0;
    }

    // Affichage du prix unitaire -
    alert(" La prix unitaire est de " + PU + "€. \n Il y en a " + QTECOM + ". \n Le total sans les réductions est alors de " + TOT + "€.\n La remise est de " + REM + "%.\n Les frais de port sont à " + PORT + "€.\n Le prix final à payer est donc de " + PAP + "€.");
}

// Exercice 5 -

var bouton5 = document.getElementById("Id_btn5");
bouton5.addEventListener("click", clickbtn5);

function clickbtn5() {
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
}