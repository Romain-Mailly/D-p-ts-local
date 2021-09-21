<?php
class Magasin {
    private $_nom ;
    private $_adresse ;
    private $_code_postal ;
    private $_ville ;

    public function __construct($nom = "Jarditou", $adresse = "30 rue de Poulainville", $code_postal = 80000, $ville = "Amiens"){
        $this->_nom = $nom ;
        $this->_adresse = $adresse ;
        $this->_code_postal = $code_postal ;
        $this->_ville = $ville ;
    }

    public function setNom($sNom){
        $this->nom = $sNom ;
    }

    public function sAdresse($sAdresse){
        $this->adresse = $sAdresse ;
    }

    public function sCode_postal($sCode_postal){
        $this->code_postal = $sCode_postal ;
    }

    public function sVille($sVille){
        $this->ville = $sVille ;
    }

    public function presentation(){
        echo "Ce magasin est $this->_nom, il se trouve $this->_adresse à $this->_ville, $this->_code_postal." ;
    }
}

$magasin1 = new Magasin() ;
$magasin1 -> presentation() ;