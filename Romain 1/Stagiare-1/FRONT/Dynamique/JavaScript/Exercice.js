/*Exercice 5.1

var nom;
var prenom;

var nom = prompt("Entrez votre nom :");
var prenom = prompt("Entrez votre prénom :");

if (window.confirm ("Êtes-vous un homme ?") == true)
{
    alert("Bonjour Monsieur "+nom+ " " +prenom)
}
else
{
    alert("Bonjour Mademoiselle "+nom+ " " +prenom)
} */

/*Exercice 6.1

var a = "100";
var b = 100  ;
var c = 1.00 ;
var d = true ;

alert("Ceci est une chaîne de caractères:" +a );

b--;
alert(b);

parseInt (a = 10)
c=c+a;
alert (c);

d=!d;
alert(d); */

/*Exercice 7.1 - Parité -
var nb;

nb = prompt("Veuillez saisir un nombre")
if (nb%2==0)
{
    alert("Nombre pair")
}
else if(nb%2!=0)
{
    alert("Nombre impair")
}*/

/*Exercice 7.2 - Âge -

var age;
var annee;
var annee_actuelle=2021;

annee = prompt("Veuillez saisir votre année de naissance ");
age=annee_actuelle-annee;
alert ("Vous avez "+age+ "ans") */

/*Exercice 7.3 - Calculette -
var nb1;
var nb2;
var operateur;

nb1 = prompt ("Veuillez saisir un premier nombre :");
operateur = prompt ("Veuillez saisir un opérateur de calcul :");
nb2 = prompt ("Veuillez saisir un deuxième nombre :");


if (operateur == "+")
{
    nb1 = parseInt(nb1, 10);
    nb2 = parseInt(nb2, 10);
    resultat = nb1 + nb2 ;
}
else if (operateur == "-")
{
    resultat = nb1 - nb2 ;
}
else if (operateur == "*")
{
    resultat = nb1 * nb2 ;
}
else if (operateur=="/" && nb2 == "0")
{
    alert ("Calcul impossible") ;
    
}
else if (operateur == "/" && nb2 !="0")
    {
        resultat = nb1 / nb2;
    }
alert(resultat); */

/* Exercice 8.1 - Saisie -
var nom;
var i = 1;
var somme;

nom = prompt("Veuillez saisir le prénom n°"+i);

while (nom!=0)
{
    document.write (nom + ", ");
    i = i + 1;
    nom = prompt("Veuillez saisir le prénom n°"+i);
}
somme = i - 1;
document.write (somme); */

/*Exercice 8.2 - Entiers inférieurs à N -

var n;
const i = -1;

n = prompt("Veuillez saisir un nombre");
while (n > i)
{
    document.write (n+"<br>");
    n--;
}*/


/* Exercice 8.3 - Moyenne -

var n;
var i = 1;
var moyenne = 0;

n = parseInt(prompt ("Veuillez saisir le nombre n°"+i));
 while (n!=0)
 {
    moyenne = moyenne + n;
    i= i +1;
    n = parseInt(prompt ("Veuillez saisir le nombre n°"+i));
 }
i = i-1;
 moyenne = moyenne / i;
 document.write(moyenne); */

 /* Exercice 8.4 - Multiples -

var n;
var x;
var i = 1;
var produit = 0;

x = parseInt(prompt("Veuillez saisir le multiplicateur :"))
n = parseInt(prompt("Veuillez saisir le nombre de fois à multiplier par " +x+ " :"))

while (i!=n+1)
{
    produit = i * x;
    document.write(i+ " x " +x+ " = " + produit +"<br>" );
    i++;
} */

/* Exercice 8.5 - Nombre de voyelles -

var mot = prompt("Entrez un mot");
var voyelles = "aeiouy";
var compteur = 0;

for (i=0; i < mot.length; i++)
{
    var lettre = mot.substring(i, i+1);
    if (voyelles.indexOf(lettre) != -1) 
    {
        compteur++;
    }
}

alert("Le nombre de voyelles est de : " + compteur);  */

// Exercice 9.1 - Le papillon -

var x;
var y;

x = parseInt(prompt("Veuillez saisir x"))
y = parseInt(prompt("Veuillez saisir y"))

function afficheImg(img)
{
    document.write ("<img src="+img+">");
}
afficheImg("papillon.jpg");
document.write("<br>")

function cube (x)
{
    return x * x * x;
}
document.write("Le cube de " + x + " est égal à " + cube(x)+ "<br>");

function produit (x, y)
{
    return x * y;
}
document.write ("Le produit de " + x + " x "+ y + " est égal à " + produit(x, y)+ "<br>");
