 <?php
    $title = 'Jarditou | Details' ;
    require "header.php" ;
    $pro_id = $_GET["pro_id"] ;
    require "connexion_bdd.php" ;
    $db = connexionBase() ;
    $requete = "SELECT * FROM produits, categories WHERE pro_id = " . $pro_id . " AND pro_cat_id = cat_id" ;
    $resultat = $db -> query($requete) ;
    $produit = $resultat->fetch(PDO::FETCH_OBJ) ;
    $resultat -> closeCursor() ;
    $categorie = $db->prepare("SELECT cat_nom  FROM categories, produits WHERE cat_id = pro_cat_id AND pro_id = " . $pro_id);
    $categorie -> execute() ;
    $rowsCategorie = $categorie->fetch(PDO::FETCH_OBJ)
  ?>
    <br><br>
    <h1 class="text-light">Détails des produits</h1>
    <hr class="bg-light">
    <br>
    
    <form action="modif.php?pro_id=<?php echo $pro_id ; ?>" method="post">


      <!-- Photo -->
      <img src="jarditou_photos/<?php echo "$produit->pro_id.$produit->pro_photo" ; ?>" width="100px" class="img-fluid rounded mx-auto d-block col-3" alt="<?php echo $produit->pro_libelle; ?>" title="<?php echo $produit->pro_libelle; ?>">




      <!-- ID -->

     
        <label class="text-light" for="id">ID</label> <br>
        <input class="form-control" type="text" name="id" id="id" value="<?php echo $produit -> pro_id ; ?>" readonly>
     <br>

      <!-- Référence -->

     
        <label class="text-light" for="ref">Référence</label>
        <input class="form-control" type="text" name="ref" id="ref" value="<?php echo $produit -> pro_ref ;?>" readonly>
      <br>

      <!-- Catégorie -->

      
      <div class="form-group">
    <label class="text-light" for="categorie">Catégorie*</label>
    <input class="form-control" type="text" name="categorie" id="categorie" value="<?php echo $rowsCategorie->cat_nom; ?>" readonly >
  </div>

     <br>

      <!-- Libellé -->

   
        <label class="text-light" for="libelle">Libellé</label>
        <input class="form-control" type="text" name="libelle" id="libelle"
          value="<?php echo $produit -> pro_libelle ;?>" readonly>
      <br>


      <!-- Description -->

      
        <label class="text-light" for="description">Descritpion</label>
        <textarea class="form-control" name="description" id="description"
          readonly> <?php echo $produit -> pro_description ;?> </textarea>
      <br>

      <!-- Stock -->
      <label for="stock">Stock</label>
      <input class="form-control" type="text" name="stock" id="stock"
       value="<?php echo $produit->pro_stock ; ?>" readonly>

      <br>

      <!-- Prix -->

    
        <label class="text-light" for="prix">Prix</label>
        <input class="form-control" type="text" name="prix" id="prix" value="<?php echo $produit -> pro_prix ;?>"
          readonly>
      <br>

      <!-- Couleur -->

        <label class="text-light" for="couleur">Couleur</label>
        <input class="form-control" type="text" name="couleur" id="couleur"
          value="<?php echo $produit -> pro_couleur ;?>" readonly>
     <br>


      <!-- Bloque -->

      <?php
      if ($produit -> pro_bloque == 1)
      {
        echo '
        <label class="text-light" for="bloque">Produit bloqué : </label>
        <input type="radio" name="bloque" value="1" disabled checked > <span class="text-light">Oui</span>    
        <input type="radio" name="bloque" value="0" disabled > <span class="text-light">Non</span> <br>
        ' ;
      }
      else
      {
        echo '
        <label class="text-light" for="bloque">Produit bloqué : </label>
        <input type="radio" name="bloque" value="1" disabled > <span class="text-light">Oui</span>    
        <input type="radio" name="bloque" value="0" disabled checked > <span class="text-light">Non</span> <br>
        ' ;
      }
    ?>

      <!-- Date d'ajout -->

      <span class="text-light">Date d'ajout :</span> <?php echo '<span class="text-light">' . $produit -> pro_d_ajout . "</span><br><br>" ; ?>

      <!-- Date de modification -->

      <span class="text-light">Date de modification :</span>
    <?php
      if ($produit -> pro_d_modif == NULL )
      {
        echo '<span class="text-light">Il n\'y a pas eu de modification sur ce produit. </span><br><br> ' ;
      }
      else
      {
        echo '<span class="text-light">' . $produit -> pro_d_modif . "</span><br><br>" ;
      }

    ?>
    
    
    <a class="btn btn-info" href="liste.php?pro_id=<?php echo $pro_id ; ?>"><i class="fas fa-list-ul"></i> Retour sur la liste</a>

      <div class="float-right">
        <button type="submit" class="btn btn-warning"><i class="fas fa-pencil-alt"></i> Modifier</button>
        <a href="confirmation_delete.php?pro_id=<?php echo $produit->pro_id ; ?>" class="btn btn-danger"><i class="fas fa-trash-alt"></i> Supprimer</a><br>
      </div>  
      <br><br>
    </form>
    
    <br>
    
<?php require "footer.php" ; ?>