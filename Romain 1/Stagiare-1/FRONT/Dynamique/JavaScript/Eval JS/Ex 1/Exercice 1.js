// EVAL - Exercice 1 -

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
document.write('<div class="text-light"> Il y a ' + j + ' personne(s) jeune(s).<br> Il y a ' + m + " personne(s) d'âge moyens(s). <br> Il y a " + v + " vieux, dont 1 centenaire.<br><br>");
document.write('<div class="text-light"> Vous pouvez fermer cette page et retourner au menu des exercices !');