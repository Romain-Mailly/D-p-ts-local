<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>mdp</title>
</head>
<body>
    <?php $password_hash = password_hash("vacances", PASSWORD_DEFAULT) ; ?>
    <?php echo $password_hash ; ?>
    <?php $password_verify = password_verify("$chaine_saisie_en_clair", $hash_stocke_en_bdd) ; ?>
    <?php echo $password_verify ; ?>
</body>
</html>