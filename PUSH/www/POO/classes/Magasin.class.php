<?php

class Magasin{
    private $_nom_magasin ;
    private $_adresse ;
    private $_code_postal ;
    protected $_ville ;
    protected $_resto ;

    public function __construct($nom_magasin = "Jarditou", $adresse = "30 rue de Poulainville", $code_postal = 80000, $ville = "Amiens", $resto="Cantine", $ticket="non"){
        $this->_nom_magasin = $nom_magasin ;
        $this->_adresse = $adresse ;
        $this->_code_postal = $code_postal ;
        $this->_ville = $ville ;
        $this->_resto = $resto ;
    }

    public function setNom($sNom_magasin){
        $this->_nom_magasin = $sNom_magasin ;
    }

    public function sAdresse($sAdresse){
        $this->_adresse = $sAdresse ;
    }

    public function sCode_postal($sCode_postal){
        $this->_code_postal = $sCode_postal ;
    }

    public function sVille($sVille){
        $this->_ville = $sVille ;
    }

    public function sResto($sResto){
        $this->_resto = $sResto ;
    }
    public function presentation(){
        echo "Ce magasin est $this->_nom_magasin, il se trouve $this->_adresse à $this->_ville, $this->_code_postal. Restauration : $this->_resto." ;
    }
}
