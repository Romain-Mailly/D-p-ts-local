<?php
class Employe
{
    public $prenom ;
    public $nom ;
    protected $age ;

    public function setAge($age)
    {
        if(is_int($age) && $age >= 1 && $age <= 120)
        $this->age = $age ;
        else
    {
        throw new Exception("L'age d'un employé doit être un entier compris entre 1 an et 120 ans.") ;
    }
    }

    public function getAge()
    {
        return $this->age ;
    }

    public function __construct($prenom, $nom, $age)
    {
        $this->prenom = $prenom ;
        $this->nom = $nom ;
        $this->setAge($age) ;
    }

    public function presentation()
    {
        var_dump("Je suis $this->prenom $this->nom et j'ai $this->age ans.") ;
    }
    
}

class Patron extends Employe
{
    public $voiture ;


    public function __construct($prenom, $nom, $age, $voiture)
    {
        parent:: __construct($prenom, $nom, $age) ;
        
        $this->voiture = $voiture ;
    }

    public function presentation()
    {
        var_dump ("Bonjour, je suis $this->prenom $this->nom et j'ai $this->age ans, et j'ai une voiture.") ;
    }

    public function rouler()
    {
        var_dump("Bonjour je suis patron et je roule en $this->voiture") ;
    }
}

$employe1 = new Employe("Remi", "Lefebvre", 89) ;

$employe2 = new Employe("Romain", "Mailly", 20) ;

$patron = new Patron("Jean", "Durant" , 56, "Citroën") ;

$employe1->presentation() ;
echo "<br>" ;
$employe2->presentation() ;
echo "<br>" ;
$patron->presentation() ;
echo "<br>" ;
$patron->rouler() ;
?>