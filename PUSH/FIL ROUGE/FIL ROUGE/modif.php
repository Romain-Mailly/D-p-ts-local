<!-- Appel du header -->
<?php
require "header.php";
require "connexion_db.php" ;
$db = connexionBase() ;
$pro_id = $_GET["pro_id"] ;
$requete = "SELECT * FROM produits WHERE pro_id = $pro_id " ;
$result = $db -> prepare($requete) ;
$result -> execute() ;
$produits = $result -> fetch(PDO::FETCH_OBJ) ;
?>

<form action="verif_modif.php" method="POST">
    <!-- ID -->
    <div class="form-group">
        <label for="id">ID :</label>
        <input type="text" class="form-control" name="id" id="id" value="<?php echo $produits->pro_id ; ?>" readonly>
    </div>
    

    <!-- Référence -->
    <div class="form-group">
        <label for="ref">Référence :</label>
        <input type="text" class="form-control <?php if(isset($_GET["eref"])) {echo "is-invalid" ; } ?>" name="ref" id="ref" value="<?php echo $produits->pro_ref ; ?>">
        <?php if(isset($_GET["eref"])) {echo "Veuillez saisir la référence (max. 30)" ; } ?>
    </div>

    
    <!-- Libellé -->
    <div class="form-group">
        <label for="lib">Libellé :</label>
        <input type="text" class="form-control <?php if(isset($_GET["elib"])) {echo "is-invalid" ; } ?>" name="lib" id="lib" value="<?php echo $produits->pro_libelle ; ?>">
        <?php if(isset($_GET["eref"])) {echo "Veuillez saisir la référence (max. 30)" ; } ?>
    </div>

    
    <!-- Description -->
    <div class="form-group">
        <label for="desc">Description :</label>
        <input type="text" class="form-control <?php if(isset($_GET["edesc"])) {echo "is-invalid" ; } ?>" name="desc" id="desc" value="<?php echo $produits->pro_desc ; ?>">
        <?php if(isset($_GET["eref"])) {echo "Veuillez saisir la référence (max. 30)" ; } ?>
    </div>

    
    <!-- Prix -->
    <div class="form-group">
        <label for="prix">Prix :</label>
        <input type="text" class="form-control <?php if(isset($_GET["eprix"])) {echo "is-invalid" ; } ?>" name="prix" id="prix" value="<?php echo $produits->pro_prix ; ?>">
        <?php if(isset($_GET["eref"])) {echo "Veuillez saisir la référence (max. 30)" ; } ?>
    </div>

    
    <!-- Stock -->
    <div class="form-group">
        <label for="sto">Stock :</label>
        <input type="text" class="form-control <?php if(isset($_GET["esto"])) {echo "is-invalid" ; } ?>" name="sto" id="sto" value="<?php echo $produits->pro_stock ; ?>">
        <?php if(isset($_GET["eref"])) {echo "Veuillez saisir la référence (max. 30)" ; } ?>
    </div>

    
    <!-- Couleur -->
    <div class="form-group">
        <label for="col">Couleur :</label>
        <input type="text" class="form-control <?php if(isset($_GET["ecol"])) {echo "is-invalid" ; } ?>" name="col" id="col" value="<?php echo $produits->pro_couleur ; ?>">
        <?php if(isset($_GET["eref"])) {echo "Veuillez saisir la référence (max. 30)" ; } ?>
    </div>

    <br>

    <!-- Buttons -->
    <button type="submit" class="btn btn-primary">Enregistrer</button>
    <a class="btn btn-danger" href="produits.php">Annuler</a>
</form>



<!-- Appel du footer -->
<?php require "footer.php" ; ?>