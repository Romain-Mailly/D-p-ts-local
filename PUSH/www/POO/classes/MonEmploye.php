<?php
require_once "Employe.class.php" ;
require_once "Magasin.class.php" ;

$employe1 = new Employe("Caffé", "John", "2001/06/27", "Responsable", 100000, "Comptabilité", "amiens", "Ticket resto", "", "", "15") ;
$employe1 -> presentation() ;
echo "<br>" ;
$employe1 -> presentation_prime() ;
echo "<br>" ;
$employe1 -> presentation_anciennete() ;
echo "<br>" ;
$employe1 -> presentation_prime_totale() ;

echo "<br><br>" ;

$employe2 = new Employe("Lefebvre", "Remi", "2021/05/10", "Chef", 12000, "Bootstrap", "paris", "Cantine", "", "", "18") ;
$employe2 -> presentation() ;
echo "<br>" ;
$employe2 -> presentation_prime() ;
echo "<br>" ;
$employe2 -> presentation_anciennete() ;
echo "<br>" ;
$employe2 -> presentation_prime_totale() ;

echo "<br><br>" ;

$employe3 = new Employe("Manix", "DJ", "2011/01/01", "Formateur", 24000, "Musique", "marseille", "Ticket resto", "", "", "5") ;
$employe3 -> presentation() ;
echo "<br>" ;
$employe3 -> presentation_prime() ;
echo "<br>" ;
$employe3 -> presentation_anciennete() ;
echo "<br>" ;
$employe3 -> presentation_prime_totale() ;

echo "<br><br>" ;

$employe4 = new Employe("De Sinety", "Vincent", "2005/03/31", "nettoyeur de vitre", 200, "cerf", "strasbourg", "Cantine", "", "", "11") ;
$employe4 -> presentation() ;
echo "<br>" ;
$employe4 -> presentation_prime() ;
echo "<br>" ;
$employe4 -> presentation_anciennete() ;
echo "<br>" ;

echo "<br><br>" ;

$employe5 = new Employe("Gourlain", "David", "1999/04/09", "sous le bureau", 10000000, "après vente bonjour", "beauvais", "Cantine", "", "", "20") ;
$employe5 -> presentation() ;
echo "<br>" ;
$employe5-> presentation_prime() ;
echo "<br>" ;
$employe5 -> presentation_anciennete() ;
echo "<br>" ;
$employe5 -> presentation_prime_totale() ;



echo "<br><br>" ;

$marseille = new Magasin("Jarditou", "3 square du Vélodrome", "13000", "Marseille", "Ticket-resto") ;
$marseille -> presentation() ;

echo "<br><br>" ;

$lyon = new Magasin("Jarditou", "4 rue du Tigre", "69000", "Lyon", "Ticket-resto") ;
$lyon -> presentation() ;


echo "<br><br>" ;

$strasbourg = new Magasin("Jarditou", "5 rue de la Choucroute", "67000", "Strasbourg", "Cantine") ;
$strasbourg -> presentation() ;


echo "<br><br>" ;

$beauvais = new Magasin("Jarditou", "6 rue de David Bowie", "60000", "Beauvais", "Cantine") ;
$beauvais -> presentation() ;


echo "<br><br>" ;

$paris = new Magasin("Jarditou", "7 rue des princesses", "75000", "Paris", "Cantine") ;
$paris -> presentation() ;

