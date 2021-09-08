<?php

interface Travailleur
{
    public function travailler() ;
}

class Employe implements Travailleur
{
    public $prenom ;
    public $nom ;
    protected $age ;

    public function __construct($prenom, $nom, $age)
    {
        $this->prenom = $prenom ;
        $this->nom = $nom ;
        $this->setAge($age) ;
    }

    public function setAge($age)
    {
        if(is_int($age) && $age>=1 && $age<=120)
        {
            $this->age = $age ;
        }
        else
        {
            throw new Exception ("L'âge doit être un entier supérieur à 1 et inférieur à 120.") ;
        }
    }

    public function travailler()
    {
        return "Je suis un employé et je travaille" ;
    }

    public function getAge()
    {
         return $this->age ;
    }

    public function presentation()
    {
        var_dump ("Salut, je suis $this->prenom $this->nom et j'ai $this->age ans.") ;
    }
}

class Patron extends Employe 
{
    public $voiture ;

    public function __construct($prenom, $nom, $age, $voiture)
    {
        parent::__construct($prenom, $nom, $age) ;

        $this->voiture = $voiture ;
    }
 
    public function presentation()
    {
        var_dump ("Bonjour, je suis $this->prenom $this->nom et j'ai $this->age ans, et j'ai une voiture.") ;
    }

    public function rouler()
    {
        var_dump("Bonjour, je roule avec ma $this->voiture !") ;
    }

    

   
}

$employe1 = new Employe("Romain", "Mailly", 20) ;
$employe2 = new Employe("Flo", "Afonso", 31) ;
$patron = new Patron("Joseph", "Durant", 55, "Mercédes") ;

faireTravailler($employe1) ;

function faireTravailler($objet)
    {
        var_dump("Travail en cours : {$objet->travailler()}") ;
    }


$employe1->setAge(20  ) ;

$employe1->presentation() ;
echo "<br>" ;
$employe2->presentation() ;
echo "<br>" ;
$patron->presentation() ;
echo "<br>" ;
$patron->rouler() ;



?>