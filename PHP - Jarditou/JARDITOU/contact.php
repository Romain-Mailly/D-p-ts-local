<!-- Script de la page du formulaire de CONTACT -->
<?php
$title = 'Jarditou | Contact' ;
require "header.php" ;
?>
    <br><br>
    <form action="verif_contact.php" method="POST">
    <p class="text-light">* Ces zones sont obligatoires </p>
    <br>
        <legend><p class="h3 text-light">Vos coordonnées</p></legend>
            <hr class="bg-light">

        <!-- NOM -->
        <div class="form-group">
            <label class="text-light" for="nom">Votre nom* :</label>
            <input class="form-control <?php if (isset($_GET['enom'])) {echo 'border border-danger' ; }?>" type="text" id="nom" name="nom" placeholder="Veuillez renseigner votre nom...">
            <?php if (isset($_GET['enom'])) {echo "<i>Le nom n'a pas été renseigné ou comporte des caractères spéciaux.</i><br>" ;} ?>        
        </div>

        
        <!-- PRÉNOM -->
        <div class="form-group">
            <label  class="text-light"for="prenom">Votre prénom* :</label>
            <input class="form-control <?php if (isset($_GET['eprenom'])) {echo 'border border-danger' ; }?>" type="text" id="prenom" name="prenom" placeholder="Veuillez renseigner votre prénom...">
            <?php if (isset($_GET['eprenom'])) {echo "<i>Le prénom n'a pas été renseigné ou comporte des caractères spéciaux.</i><br>" ; } ?> 
        </div>

    
        <!-- SEXE -->
        <div class="form-group">
            <label  class="text-light"for="sexe">Sexe* :</label>
            <input type="radio" id="sexe" name="sexe" value="Féminin"> <span class="text-light">Féminin</span>
            <input type="radio" name="sexe" value="Masculin" > <span class="text-light">Masculin</span>
            <input type="radio" name="sexe" value="Neutre" > <span class="text-light">Neutre</span>
            <br>
            <?php if (isset($_GET['esexe'])) {echo "<i>Veuillez saisir le sexe.</i><br>" ;} ?>
        </div>

        <!-- DATE DE NAISSANCE -->
        <div class="form-group">
            <label  class="text-light"for="ddn">Date de naissance* :</label>
            <input class="form-control" type="date" id="ddn" name="ddn" >
            <?php if (isset($_GET['eddn'])) {echo "<i>Veuillez saisir une date de naissance valide.</i><br>" ;} ?>
        </div>
       
        <!-- CODE POSTAL -->
        <div class="form-group">
            <label  class="text-light"for="cp">Code postal* :</label>
            <input class="form-control" type="number" id="cp" name="cp" placeholder="Veuillez renseigner votre code postal...">
            <?php if (isset($_GET['ecp'])) {echo "<i>Veuillez saisir un code postal valide.</i><br>" ;} ?>
        </div>
       
        <!-- ADRESSE -->
        <div class="form-group">
            <label  class="text-light"for="adresse">Adresse :</label>
            <input class="form-control" type="text" id="adresse" name="adresse" placeholder="Veuillez saisir votre adresse...">
        </div>
       
        <!-- VILLE -->
        <div class="form-group">
            <label  class="text-light"for="ville">Ville :</label>
            <input class="form-control" type="text" id="ville" name="ville" placeholder="Veuillez saisir votre ville...">
        </div>
       
        <!-- EMAIL -->
        <div class="form-group">
            <label  class="text-light"for="email">Email* :</label>
            <input class="form-control" type="email" id="email" name="email" placeholder="dave.loper@afpa.fr" >
            <?php if (isset($_GET['email'])) {echo "<i>Veuillez saisir une adresse mail valide.</i><br>" ;} ?>
        </div>


        <legend><p class="h3 text-light">Votre demande</p></legend>

        <!-- SUJET -->
        <div class="form-group">
        <label  class="text-light"for="sujet">Sujet* :</label>
        <select class="form-control" id="sujet" name="sujet">
            <option value="" selected disabled>Veuillez sélectionner un sujet</option>
            <option value="Commandes">Mes commandes</option>
            <option value="Questions">Questions sur un produit</option>
            <option value="Réclamation">Réclamations</option>
            <option value="Autres">Autres</option>
        </select>
        <?php if (isset($_GET['esujet'])) {echo "<i>Le sujet n'a pas été sélectionné.</i><br>" ;} ?>
        </div>

        <!-- QUESTIONS -->
        <div class="form-group">
            <label  class="text-light"for="questions">Votre question* :</label>
            <textarea class="form-control" id="questions" name="questions" placeholder="Veuillez renseigner votre question..."></textarea>
            <?php if (isset($_GET['eque'])) {echo "<i>Le champ n'a pas été rempli.</i><br>" ;} ?>
        </div>
    
        <!-- TRAITEMENT INFORMATIQUE -->
        <div class="form-group">
            <input type="checkbox" id="traitement" name="traitement">
            <label  class="text-light"for="traitement">* J'accepte le traitement informatique de ce formulaire</label>
            <br>
            <?php if (isset($_GET['etrait'])) {echo "<i>Veuillez cochez la case.</i><br>" ;} ?>
        </div>
    
    <!-- BOUTON ENVOYER/ANNULER --> 
    <button class="btn btn-warning" type="submit" id="envoyer" name="envoyer" value="Envoyer">Envoyer</button>
    <a class="btn btn-secondary" href="index.php" value="Annuler">Annuler</a>
    </form>
    <br>
<?php require "footer.php" ; ?> 