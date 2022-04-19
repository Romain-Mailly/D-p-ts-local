// EVAL - Exercice 3 -

var prenom;
var tab = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"];
alert("Avant toute chose, pressez F12, allez dans la console, et verifiez le tableau :")
console.log(tab);
prenom = window.prompt("À présent, veuillez saisir un prénom (les majuscules sont importantes), si il figure dans le tableau, le prénom disparaîtra, sinon, un message d'erreur s'affichera :");
var index = tab.indexOf(prenom);
if (index > -1) {
    tab.splice(index, 1);
    tab.push(" ");
    console.log(tab);
    document.write('<div class="text-light"> Vous pouvez fermer cette page et retourner au menu des exercices !');
} else {
    alert("Ce prénom ne figure pas dans le tableau.");
    console.log(tab);
    document.write('<div class="text-light"> Vous pouvez fermer cette page et retourner au menu des exercices !');
}