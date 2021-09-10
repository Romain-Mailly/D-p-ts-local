<!-- Script de la liste des produits du site -->
<?php 
// Appel du header
require "header.php" ;

// Appel à "connexion_db" pour relié le fichier à la base de données 
require "connexion_db.php" ;

// Attribution de la variable $db à la fonction connexionBase() 
$db = connexionBase() ;

//Création de la requête pour l'affichage des produits 
$req = "SELECT * FROM produits" ;
$result = $db -> prepare($req) ;
$result->execute() ;


?>
<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
    Dropdown button
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><a class="dropdown-item" href="2x2.php">2x2</a></li>
    <li><a class="dropdown-item" href="3x3.php">3x3</a></li>
    <li><a class="dropdown-item" href="4x4.php">4x4</a></li>
    <li><a class="dropdown-item" href="5x5.php">5x5</a></li>
    <li><a class="dropdown-item" href="skewb.php">Skewb</a></li>
    <li><a class="dropdown-item" href="pyraminx.php">Pyraminx</a></li>
    <li><a class="dropdown-item" href="megaminx.php">Megaminx</a></li>
  </ul>
</div>

<br><br>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="2x2.php">2x2</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="3x3.php">3x3</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="=4x4.php">4x4</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="5x5.php">5x5</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="skewb.php">Skewb</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="pyraminx.php">Pyraminx</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="megaminx.php">Megaminx</a>
        </li>
      </ul>
    </div>
  </div>
</nav>



<a href="gan.php">
    <img src="photos_cube/gan.png">
</a>
<a href="moyu.php">
    <img src="photos_cube/moyu_logo.png">
</a>
<a href="qiyi.php">
    <img src="photos_cube/logo_qiyi.png">
</a>
<a href="yuxin.php">
    <img src="photos_cube/logo_yuxin.png" height="260">
</a>
<a href="xman.php">
    <img src="photos_cube/xman_logo.png">
</a>






<?php require "footer.php" ; ?>