<?php
    $title = 'Jarditou | Ajout' ;
    require "header.php" ;
    require "connexion_bdd.php" ;
    $db = connexionBase() ;
    $categorie = $db->prepare("SELECT cat_nom, cat_id  FROM categories ORDER BY cat_nom");
    $categorie -> execute() ;
?>
    <br><br>
    <h1>Ajout d'un produit</h1>
    <hr class="bg-light">
    <form class="form-group" action="verif_ajout.php" method="POST" enctype="multipart/form-data">


        <!-- Photo -->
        <div class="form-group">
            <label for="photo">Photo*</label><br>
            <input type="file" <?php if (isset($_GET['ephoto'])) { echo 'class="border border-danger"'; } ?> id="photo" name="photo"><br>
            <?php
            if (isset($_GET['ephoto'])) { echo '<i class="fas fa-exclamation-circle text-danger"> Le format de l\'image doit être en .jpg, .jpeg ou .png.</i>'; }
            ?>
        </div>


        <!-- Référence -->
        <label for="ref">Référence</label>
        <input type="text" class="form-control <?php if (isset($_GET['eref'])) { echo 'border border-danger'; } ?>" id="ref" name="ref" placeholder="Ex : barb004 (max. 10 caractères)">
        <?php if (isset($_GET['eref'])) { echo '<i>La référence n\'a pas été renseignée, comporte des caractères spéciaux, ou comporte trop de caractères.</i> <br>'; } ?>
    
        <br>

        <!-- Libellé -->
        <label for="libelle">Libellé</label>
        <input type="text" class="form-control <?php if (isset($_GET['elib'])) { echo 'border border-danger'; } ?>" id="libelle" name="libelle" placeholder="Ex : Zeus le barbecue (max. 200 caractères)">
        <?php if (isset($_GET['elib'])) { echo '<i>Le libellé n\'a pas été renseignée, comporte des caractères spéciaux ou des chiffres ou comporte trop de caractères.</i> <br>'; } ?>

        <br>

        <!-- Catégorie --> 
    
        <div class="form-group">
            <label for="categorie">Catégorie*</label>
            <select id="categorie" name="categorie" class="form-control <?php if (isset($_GET['ecat'])) {echo 'border border-danger' ; } ?>">
                <option value="" selected disabled>--</option>
        <?php

            while ($rowsCategorie = $categorie->fetch(PDO::FETCH_OBJ)):
        ?>
        <option value="<?php echo $rowsCategorie->cat_id; ?>">
        <?php echo $rowsCategorie->cat_nom; ?>
        </option>
        <?php
            endwhile;

            $categorie->closeCursor(); 
        ?>
        </select>
        <?php if (isset($_GET['ecat'])) {echo '<i>Veuillez séléctionner une catégorie.</i> <br>' ; } ?>
        </div>
  
        <br>
        
        <!-- Description -->
        <label for="description">Description</label>
        <textarea class="form-control <?php if (isset($_GET['edesc'])) { echo 'border border-danger'; } ?> " name="description" id="description" placeholder="Ex : C'est un très beau barbecue et en plus il fait de très bonnes merguez ! (max. 1000 caractères)"></textarea>
        <?php if (isset($_GET['edesc'])) { echo '<i>La description n\'a pas été renseignée ou comporte trop de caractères.</i> <br>'; } ?>
        <br>

        <!-- Prix -->
        <label for="prix">Prix</label>
        <input type="text" class="form-control <?php if (isset($_GET['eprix'])) { echo 'border border-danger'; } ?>" id="prix" name="prix" placeholder="Ex : 666.95 (max. 6 caractères dont 2 après la virgule obligatoires)">
        <?php if (isset($_GET['eprix'])) { echo '<i>Le prix n\'a pas été renseignée, comporte des caractères spéciaux ou des lettres, ou comporte trop de caractères.</i> <br>'; } ?>

        <br>

        <!-- Stock -->
        <label for="stock">Stock</label>
        <input type="text" class="form-control <?php if (isset($_GET['estock'])) { echo 'border border-danger'; } ?>" id="stock" name="stock" placeholer="Ex : 2 (max. 11 caractères)">
        <?php if (isset($_GET['estock'])) { echo '<i>Le stock n\'a pas été renseignée, comporte des caractères spéciaux ou des lettres, ou comporte trop de caractères.</i> <br>'; } ?>
        
        <!-- Couleur -->
        <br>
        <label for="couleur">Couleur</label>
        <input type="text" class="form-control <?php if (isset($_GET['ecolor'])) { echo 'border border-danger'; } ?>" id="couleur" name="couleur" placeholder="Ex : Pourpre (max. 30 caractères)">
        <?php if (isset($_GET['ecolor'])) { echo '<i>La couleur n\'a pas été renseignée, comporte des caractères spéciaux ou des chiffres ou comporte trop de caractères.</i> <br>'; } ?>

        <br>

        <!-- Produits bloqués -->
        <label for="bloque">Produit bloqué :</label>
        <input name="bloque" id="bloque" type="radio" value="1"> Oui
        <input name="bloque" type="radio" value="0" checked> Non

        <br><br>

        <div class="float-right">
            <button class="btn btn-success"><i class='far fa-share-square'></i> Enregistrer</button>
            <a href="liste.php" class="btn btn-danger"><i class='far fa-trash-alt'></i> Annuler</a>
        </div>
        <br>
    </form>

    <br>

    <?php require "footer.php" ; ?>