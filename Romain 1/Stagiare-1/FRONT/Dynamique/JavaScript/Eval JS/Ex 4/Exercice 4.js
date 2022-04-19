// EVAL - Exercice 4 -

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
document.write('<div class="text-light"> Le prix unitaire est de ' + PU + '€. <br> Il y en a ' + QTECOM + '. <br> Le total sans les réductions est alors de ' + TOT + '€.<br> La remise est de ' + REM + '%.<br> Les frais de port sont à ' + PORT + '€.<br> Le prix final à payer est donc de ' + PAP + '€.');
document.write('<div class="text-light"> <br> Vous pouvez fermer cette page et retourner au menu des exercices !');
