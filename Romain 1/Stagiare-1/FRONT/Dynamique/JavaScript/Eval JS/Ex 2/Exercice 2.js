// EVAL - Exercice 2 -

var x;
var i = 1;
var result;

function multiplicationTable() {
    var x = parseInt(window.prompt("Veuillez saisir la table de multipication que vous souhaitez avoir :"));
    while (i != 11) {
        result = i * x;
        document.write('<div class="text-light"> ' + x + ' x ' + i + ' = ' + result + '<br>');
        i++;
    }
}

multiplicationTable();
document.write('<div class="text-light"> <br> Vous pouvez fermer cette page et retourner au menu des exercices !');