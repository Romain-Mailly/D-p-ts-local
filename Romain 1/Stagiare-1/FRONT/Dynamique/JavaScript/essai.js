var x;
var y;

x = prompt("Veuillez saisir une première valeur")
y = parseInt(prompt("Veuillez saisir une seconde valeur"))

function afficheImg (img)
{
    document.write("<img src="+img+">");
}
afficheImg ("papillon.jpg");
document.write("<br>");

function cube (x)
{
    return x * x * x;
}
document.write ("Le cube de " +x+ " est égal à "+ cube(x)+ "<br>");

function produit (x, y)
{
    return x * y;
}
document.write ("Le produit de " +x+ "x" +y+ " est égal à "+ produit(x, y)+ "<br>");