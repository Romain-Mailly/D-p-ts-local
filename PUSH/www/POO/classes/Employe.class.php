<?php
require_once "Magasin.class.php" ;

class Employe extends Magasin{
    private $_nom ;
    private $_prenom ;
    private $_embauche ;
    private $_poste ;
    private $_salaire ;
    private $_service ;
    private $_magasin ;
    private $_repas ;
    private $_cheque ;
    private $nb_enfant ;
    private $_enfant ;
    private $_noel ;

    public function __construct($nom="Loper", $prenom="Dave", $embauche="2001/06/27", $poste="salarié", $salaire=12, $service="RH", $magasin= "Amiens", $repas="Ticket resto", $cheque = "Non", $nb_enfant = 0, $enfant = 0, $noel ="Non"){
        
        parent::__construct($nom_magasin = "Jarditou", $adresse = "30 rue de Poulainville", $code_postal = 80000, $ville = "Amiens", $resto="Cantine") ;
        
        $this->_nom = $nom ;
        $this->_prenom = $prenom ;
        $this->_embauche = $embauche ;
        $this->_poste = $poste ;
        $this->_salaire = $salaire ;
        $this->_service = $service ;
        $this->_magasin = $magasin ;
        $this->_repas = $repas ;
        $this->_cheque = $cheque ;
        $this->_nb_enfant = $nb_enfant ;
        $this->_enfant = $enfant ;
        $this->_noel = $noel ;
    }

    public function setNom($sNom){
        $this->_nom = $sNom ;
    }

    public function setPrenom($sPrenom){
        $this->_prenom = $sPrenom ;
    }

    public function setEmbauche($sEmbauche){
        $this->_embauche = $sEmbauche ;
    }

    public function setPoste($sPoste){
        $this->_poste = $sPoste ;
    }

    public function setSalaire($sSalaire){
        $this->_salaire = $sSalaire ;
    }

    public function setService($sService){
        $this->_service = $sService ;
    }

    public function setMagasin($sMagasin){
        $this->_magasin = $sMagasin ;
    }

    public function setRepas($sRepas){
        $this->_repas = $sRepas ;
    }

    public function sCheque($sCheque){
        $this->_cheque = $sCheque ;
    }

    public function sNb_enfant($sNb_enfant){
        $this->_nb_enfant = $sNb_enfant ;
    }

    public function sEnfant($sEnfant){
        $this->_enfant = $sEnfant ;
    }

    public function sNoel($sNoel){
        $this->_noel = $sNoel ;
    }

    public function annees()
    {
        $date = new DateTime();
        $date2 = new DateTime("$this->_embauche");
        $diff = $date2->diff($date)->y ;

        return $diff ;
    }

    public function cheques(){
        if ($this->annees() != 0){
            $this->_cheque = "Oui" ;
            return $this->_cheque ;
        }
        else{
            $this->_cheque = "Non" ;
            return $this->_cheque ;
        }
    }

    public function enfants(){
        if ($this->_enfant >= 1 && $this->_enfant <= 10){
            $this->_noel = 20 ;
            return $this->_noel ;
        }
        else if ($this->_enfant >= 11 && $this->_enfant <= 15){
            $this->_noel = 30 ;
            return $this->_noel ;
        }
        else if ($this->_enfant >= 16 && $this->_enfant <= 18){
            $this->_noel = 50 ;
            return $this->_noel ;
        }
        else{
            $this->_noel = 0 ;
            return $this->_noel ;
        }
    }

    public function presentation() {
        echo "Je m'appelle $this->_prenom $this->_nom, je suis arrivé le $this->_embauche dans le service
        $this->_service au poste de $this->_poste et je touche $this->_salaire € par an. Je suis dans l'entreprise de $this->_magasin depuis " . $this->annees() . " ans. 
        Le midi c'est : $this->_repas. On a le droit au ticket ? :" . $this->cheques() . ". Mon enfant à  $this->_enfant ans, j'ai donc une prime de Noël de " . $this->enfants() . "€";
    }

    public function prime(){
        $prime = $this->_salaire * 5 / 100 ;
        return $prime ;
    }

    public function presentation_prime() {
        echo "Mon salaire est de $this->_salaire € par an et je touche une prime de " . $this->prime() . "€." ;
    }

    public function anciennete(){
        $i = 1 ;
        $salaire_anciennete = $this->_salaire ;
        while ($i <= $this->annees()){
            $salaire_anciennete = $salaire_anciennete + ($salaire_anciennete * 2 / 100) ;
            $i++ ;
        }
        return round($salaire_anciennete - $this->_salaire, 2) ;
    }

    public function presentation_anciennete(){
        echo "Mon salaire de base est de $this->_salaire € par an et puisque j'ai " . $this->annees() . " ans d'ancienneté dans la boite je touche une prime d'ancienneté de " . $this->anciennete() . "€." ;
    }

    public function prime_totale(){
        $prime_totale = $this->prime() + $this->anciennete() ;
        return $prime_totale ;
    }

    public function presentation_prime_totale(){
        echo "Par an, j'ai une prime totale de " . $this->prime_totale() . " €." ;
    }

}