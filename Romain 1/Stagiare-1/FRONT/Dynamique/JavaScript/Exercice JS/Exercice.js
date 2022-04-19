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
var somme = 0;

n = parseInt(prompt ("Veuillez saisir le nombre n°"+i));
 while (n!=0)
 {
    somme = somme + n;
    i= i +1;
    n = parseInt(prompt ("Veuillez saisir le nombre n°"+i));
 }
i = i-1;
 moyenne = somme / i;
 document.write("La somme est égale à " + somme + "<br>")
 document.write("La moyenne est égale à " + moyenne); */

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

/* Exercice 9.1 - Le papillon -

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
document.write ("Le produit de " + x + " x "+ y + " est égal à " + produit(x, y)+ "<br>"); */

/* Exercice 9.2 - String token -

var str1;
var str2;
var n;

n = prompt("Veuillez saisir des mots avec des espaces entre les deux")

function strtok(str1, str2, n)
{

}
 */

/* Exercice 10.1 -Tableau n°1 -
var n;
var tableau = [];
var i = 0;
var valeur ;

n = parseInt(prompt("Veuillez dire combien valeur il y aura dans le tableau :"));

tableau = new Array (n);

while (i != n)
{
    valeur = (prompt("Veuillez saisir la valeur n°"+(i+1)+" du tableau :"));
    tableau[i] = valeur;
    i++
}
document.write(tableau);
console.log(tableau); */

 /* Exercice 10.2 - Tableaux n°2 - 
 var tabFinal;

 function GetInteger()
 {
     var n = parseInt(prompt("Veuillez saisir un entier :")); // 3. Demande un nombre à l'utilisateur qui sera stocké dans la var locale
     return n; // 4. Retourne le nombre stocké à qui l'aura demandé (la var "n" de la fonction InitTab dans notre cas)
 }
 
 function InitTab()
 {
     // 1. Les variables sont propres à la fonction, on dit qu'elles sont locales (ne fonctionnent QUE pour cette fonction précise)
     var n = GetInteger(); // 2. On appelle la fonction GetInteger qui affectera la var "n" de cette fonction
     var tab = new Array(n); // 5. Ici la var "n" correspond au résultat retourné par la fonction GetIntenger
     return tab; // 6. On retourne la valeur de la var locale pour l'utiliser dans d'autres fonctions qui auront appelés celle-ci...
 }
 
 function SaisieTab()
 {
     var val;
     var tab = InitTab();
 
     for (i = 0; i < tab.length; i++)
     {
         val = prompt("Veuillez saisir la valeur n°" + (i + 1) + " :");
         tab[i] = [val];
     }
     return tabFinal = tab;
 }
 
 function AfficheTab()
 {
     document.write("Tableau : " + tabFinal + "<br>");
 }
 
 function RechercheTab()
 {
     var n = GetInteger() - 1;
     document.write("Index n°" + (n + 1) + " : " + tabFinal[n] + "<br>");
 }
 
 function InfoTab()
 {
     var somme = 0;
     var moyenne = 0;
 
     for (i = 0; i < tabFinal.length; i++)
     {
         somme += parseInt(tabFinal[i]);
     }
     moyenne = somme / tabFinal.length;
     document.write("Maximum : " + Math.max.apply(null, tabFinal) + "<br>");
     document.write("Moyenne : " + moyenne + "<br>");
 }
 
 SaisieTab(); */

 /* Exercice 12.1 -

 var n;
 var tableau;
 var i = 0;
 var somme = 0;
 var moyenne = 0;
 
 tableau = new Array;
 
 while (n != 0)
 {
     var n = parseInt(window.prompt("Veuillez saisir un entier :"));
     i++;
     somme = somme + n ;
     tableau.push(n);
 }
 tableau.pop();
 i-- ;
 document.write("Le nombre de valeur est de : "+i+ "<br>");
 moyenne = somme / i ;
 document.write("La somme des valeurs est de : "+somme+ "<br>");
 document.write("La moyenne des valeurs est de : "+moyenne+ "<br>");
 console.log(tableau); */

 /* Exercice 15.1 -

var button = document.getElementById ("btn");
button.addEventListener ("click", clickbtn);

var texte = document.getElementById ("texte").value;

function clickbtn ()
{
    alert("Vous avez saisi : "+ texte);
}
 /* A mettre dans le document HTML

 <p>Saisissez votre texte et presser "Le bouton d'acné"</p>
        <input type="text" id="texte" name="texte" placeholder="Saissisez le texte ici...
        ">
        <button id="btn">Le bouton d'acné</button> */