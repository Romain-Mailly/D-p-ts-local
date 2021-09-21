<?php
date_default_timezone_set("Europe/Paris") ;
//Ex 1
$date1 = date("d/m/Y") ;
echo "Nous sommes le $date1. <br> <br>";

//Ex 2
$date2=new DateTime('07/14/2019') ;
echo $date2->format('W') . "<br> <br>";

//Ex 3
$date3 = new DateTime('02/11/2022') ;
$date1 = new DateTime() ;
$diff = $date1 -> diff($date3) ;
echo $diff -> format('%a') . "<br> <br>";

//Ex 4
$time = time() ;
$mktime = mktime(0, 0, 0, 2, 11, 2022) ;
$intervalle = $mktime - $time ;
echo round($intervalle / 86400) . "<br> <br>" ;

//Ex 5
$date4 = new DateTime() ;
while ($date4 -> format('L') == 0)
{
    $date4 -> add(new DateInterval('P1Y')) ;
}
echo $date4 -> format('Y') . "<br> <br>";

//Ex 6
$date6 = "17/17/2021" ;
list($dd, $mm, $yy) = explode ("/", $date6) ;
$dd = (int) $dd ;
$mm = (int) $mm ;
$yy = (int) $yy ;

if (!checkdate ($dd, $mm, $yy))
{
    echo "La date $date6 est erronée avec erronation ! <br> <br>" ;
}
else
{
    echo "La date $date6 est validée avec validation ! <br> <br>" ;
}

//Ex 7
echo 'Il est actuellement ' . date('H') .'h' . date('i') . " ! <br> <br>";


//Ex 8
$date7 = new DateTime() ;
$date7 -> add (new DateInterval("P1M")) ;
echo $date7 -> format('d/m/Y') ;

?>