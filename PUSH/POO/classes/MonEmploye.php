<?php
require_once "Employe.class.php" ;

$employe1 = new Employe("Caffé", "John", "2001/06/27", "Responsable", 100000, "Comptabilité") ;
$employe1 -> presentation() ;
echo "<br>" ;
$employe1 -> presentation_prime() ;
echo "<br>" ;
$employe1 -> presentation_anciennete() ;
echo "<br>" ;
$employe1 -> presentation_prime_totale() ;

echo "<br><br>" ;

$employe2 = new Employe("Lefebvre", "Remi", "2021/05/10", "Chef", 12000, "Bootstrap") ;
$employe2 -> presentation() ;
echo "<br>" ;
$employe2 -> presentation_prime() ;
echo "<br>" ;
$employe2 -> presentation_anciennete() ;
echo "<br>" ;
$employe2 -> presentation_prime_totale() ;

echo "<br><br>" ;

$employe3 = new Employe("Manix", "DJ", "2011/01/01", "Formateur", 24000, "Musique") ;
$employe3 -> presentation() ;
echo "<br>" ;
$employe3 -> presentation_prime() ;
echo "<br>" ;
$employe3 -> presentation_anciennete() ;
echo "<br>" ;
$employe3 -> presentation_prime_totale() ;

echo "<br><br>" ;

$employe3 = new Employe("De Sinety", "Vincent", "2005/03/31", "nettoyeur de vitre", 200, "cerf") ;
$employe3 -> presentation() ;
echo "<br>" ;
$employe3 -> presentation_prime() ;
echo "<br>" ;
$employe3 -> presentation_anciennete() ;
echo "<br>" ;

echo "<br><br>" ;

$employe4 = new Employe("Gourlain", "David", "1999/04/09", "sous le bureau", 10000000, "après vente bonjour") ;
$employe4 -> presentation() ;
echo "<br>" ;
$employe4-> presentation_prime() ;
echo "<br>" ;
$employe4 -> presentation_anciennete() ;
echo "<br>" ;
$employe4 -> presentation_prime_totale() ;

