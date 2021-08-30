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
            <label for="login">Login :</label>
            <input class="form-control <?php if (isset($_GET["elogin"])) { echo 'border border-danger' ;} ?>" type="text" name="login" id="login">
            <?php if (isset($_GET["elogin"])) {echo "<i>Veuillez saisir un email valide.</i>" ; } ?>
            </div>
        <br>            
            <div class="form-group">
                <label for="mdp">Mot de passe :</label>
                <input class="form-control <?php if (isset($_GET["emdp"])) {echo 'border border-danger' ; } ?>" type="text" name="mdp" id="mdp">
                <?php if (isset($_GET["emdp"])) {echo "<i>Veuillez saisir un mot de passe correct !</i>" ; } ?>
            </div>
        <br>
            <div class="form-group">
                <input type="submit" class="btn btn-dark" value="Envoyer"> 
             </div>
        </form>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>