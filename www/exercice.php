<?php
/* - Exercice 1 - Boucles

$a ;
for ($a=0; $a<=150; $a = $a+2)
{
    echo $a . '<br>';
}
*/

/* - Exercice 2 - Boucles

$i ;
for ($i=1; $i<=500; $i++)
{
    echo $i . ". Je dois savoir faire des sauvegardes régulières de mes fichiers. <br>";
}
*/

/* - Exercice 3 - Boucles
$tableau = '<table border="1"><tr>';

    for($i =-1; $i <=12; $i++){
        if($i >= 0){
        $tableau .= "<th>".$i."</th>";
        }
        else{
            $tableau .= "<th></th>";
        };
};

  for($a = 0; $a <=12; $a++){
        $tableau .= '<tr>';
        $tableau .= "<th>".$a."</th>";
            for ($b=0; $b <=12; $b++){
                $tableau .= "<td>".$a*$b."</td>";
            };
        $tableau .= '</tr>';
        };
        $tableau .= '</table>';



  $tableau .= '<tr><td></td></tr>';
  $tableau .= '</table>';
  echo $tableau;
 
echo table(12, 12);
*/


/* - Exercice 4 - Calculator
$resultat = 0 ;
function calculator ($nbr1, $operateur, $nbr2)
{
    if ($operateur = "+")
    {
        $resultat = $nbr1 + $nbr2 ;
    }
    else if ($operateur = "-")
    {
        $resultat = $nbr1 - $nbr2 ;
    }
    else if ($operateur = "*")
    {
        $resultat = $nbr1 * $nbr2 ;
    }
    else if ($operateur = "/")
    {
        $resultat = $nbr1 / $nbr2 ;
    }
    return $resultat ;
}
echo calculator (4, "*", 4) ;
*/

/* - Exercice 5 - Fichiers
var-dump($_FILES);
*/

/*
$a = array(
    "19001" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "", "", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", "Validation"), 
    "19002" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", ""), 
    "19003" => array("", "", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "", "", "Validation") 
   );
*/


/* - Exercice 1 - Tableau
    
$valid = $a["19002"] ;
$i = 0 ;
       foreach($valid as $sub_valid)
       {
           $i++ ;
           if($sub_valid == "Validation")
           {
               echo "La semaine de validation pour le 2ème groupe est la $i<sup>ème</sup> semaine.";
               break ;
           }
        }
*/



/* - Exercice 2 - Tableau 

$der = $a["19001"] ;
$i = 0 ;
foreach ($der as $sub_der)
{
    $i++ ;
    if ($sub_der == "Validation")
    {
        $i-- ;
        echo "La dernière semaine de stage est au bout de la $i <sup>ème</sup> semaine." ;
        break ;
    }
}
*/



/* - Exercice 3 - Tableau

$a2 = array();

    foreach ($a as $index => $valeur)
    {
        $a2[] = $index;
    }

    echo "<pre>";
    print_r($a2);
    echo "</pre>";
*/


/* - Exercice 4 - Tableau

$stage = $a["19003"];
$i = 0 ;
        foreach($stage as $sub_stage)
        {
            if($sub_stage == "Stage")
            {
                $i++ ;
            }
        }
echo $i ;
*/

// ex1


?>