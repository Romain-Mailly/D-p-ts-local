<?php

class Employe{
    private $_nom ;
    private $_prenom ;
    private $_embauche ;
    private $_poste ;
    private $_salaire ;
    private $_service ;

    public function __construct($nom="Loper", $prenom="Dave", $embauche="2001/06/27", $poste="salarié", $salaire=12, $service="RH"){
        $this->_nom = $nom ;
        $this->_prenom = $prenom ;
        $this->_embauche = $embauche ;
        $this->_poste = $poste ;
        $this->_salaire = $salaire ;
        $this->_service = $service ;
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

    public function annees()
    {
        $date = new DateTime();
        $date2 = new DateTime("$this->_embauche");
        $diff = $date2->diff($date)->y ;
        return $diff ;

    }

    public function presentation() {
        echo "Je m'appelle $this->_prenom $this->_nom, je suis arrivé le $this->_embauche dans le service
        $this->_service au poste de $this->_poste et je touche $this->_salaire € par an. Je suis dans l'entreprise depuis " . $this->annees() . " ans." ;
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