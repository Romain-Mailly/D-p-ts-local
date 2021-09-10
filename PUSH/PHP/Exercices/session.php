<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Sessions et mots de passe</title>
</head>
<body>
    <div class="container">
        <br><br>
        <h3><u>Les sessions et les mots de passe</u></h3>
        <?php if (isset($_GET["eerreur"])) {echo '<h6 class="text-danger">La connexion a échoué.</h6>' ; } ?>
        <br>
        <form action="verif.php" method="POST">
    <div class="form-group">
        <label for="nom">Nom :</label>
        <input class="form-control <?php if (isset($_GET["enom"])) {echo "border border-danger";}?>" name="nom" id="nom" type="text" placeholder="Loper">
        <?php if (isset($_GET["enom"])) {echo "Veuillez saisir un nom valide.";}?>
    </div>

    <div class="form-group">
        <label for="prenom">Prénom :</label>
        <input class="form-control <?php if (isset($_GET["epre"])) {echo "border border-danger";}?>" name="prenom" id="prenom" type="text" placeholder="Dave">
        <?php if (isset($_GET["epre"])) {echo "Veuillez saisir un prénom valide.";}?>
    </div>

    <div class="form-group">
        <label for="login">Login :</label>
        <input class="form-control <?php if (isset($_GET["elog"])) {echo "border border-danger";}?>" name="login" id="login" type="text" placeholder="Dave_Loper">
        <?php if (isset($_GET["elog"])) {echo "Veuillez saisir un login valide.";}?>
    </div>

    <div class="form-group">
        <label for="mail">Email :</label>
        <input class="form-control <?php if (isset($_GET["email"])) {echo "border border-danger";}?>" name="mail" id="mail" type="email" placeholder="dave.loper@afpa.fr">
        <?php if (isset($_GET["email"])) {echo "Veuillez saisir un email valide.";}?>
    </div>

    <div class="form-group">
        <label for="mdp">Mot de passe :</label>
        <input class="form-control <?php if (isset($_GET["emdp"])) {echo "border border-danger";}?>" name="mdp" id="mdp" type="password" placeholder="Password123!">
        <?php if (isset($_GET["emdp"])) {echo "Veuillez saisir un mot de passe valide.";}?>
    </div>
    
    <br>

    <button type="submit" class="btn btn-success"><i class="fas fa-share"></i> Enregistrer</button>
</form>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>