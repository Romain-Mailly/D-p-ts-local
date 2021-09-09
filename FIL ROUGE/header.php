<!-- Header de toute les pages du site -->

<!-- Appel de la fonction "session_start() pour relier toutes les pages à la même session -->
<?php session_start() ; ?>
<!DOCTYPE html>
<html lang="fr" class="mx-5 mb-2">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Cubin'Shop</title>
    <!-- Petite icône dans l'onglet à côté du titre -->
    <link rel="icon" type="image/png" sizes="16x16" href="photos_cube/logo.png">
</head>

<body>
    
    <div class="container">

    <!-- Bannière du site -->
    <img src="photos_cube/banniere.jpg" width="100%" title="Bannière Cubin'Shop" alt="Bannière Cubin'Shop">

    <!-- Début de Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.php">Cubin'Shop</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <!-- Bouton ACCUEIL -->
                        <a class="nav-link" aria-current="page" href="index.php">Accueil</a>
                    </li>
                    <!-- Bouton PRODUITS -->
                    <li class="nav-item">
                        <a class="nav-link" href="produits.php">Produits</a>
                    </li>
                    <!-- Bouton CONTACT -->
                    <li class="nav-item">
                        <a class="nav-link" href="contact.php">Contact</a>
                    </li>
                   
                </ul>

                 <!-- Dropdown de CONNEXION -->
                
            </div>
            <div class="dropdown me-5">
                    <button class="btn btn-success dropdown-toggle" type="button" id="dropdownAccount"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="bi bi-person-circle"></i> Mon compte
                    </button>
                    <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="dropdownAccount">
                        <form class="px-4 py-3" action="#" method="POST">
                            <div class="form-floating mb-3">
                                <input type="email" class="form-control " id="accountEmail" name="accountEmail"
                                    placeholder="dave.loper@jarditou.com">
                                <label for="dropdownEmail" class="form-label"><i class="bi bi-envelope"></i> Login </label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="password" class="form-control" id="accountPassword" name="accountPassword"
                                    placeholder="Mot de passe">
                                <label for="dropdownPassword" class="form-label"><i class="bi bi-key"></i> Mot de
                                    passe</label>
                            </div>
                            <div class="mb-3">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="accountCheck"
                                        name="accountCheck">
                                    <label class="form-check-label" for="accountCheck">
                                        Se souvenir de moi
                                    </label>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-success"><i class="bi bi-door-open"></i>
                                Connexion</button>
                        </form>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#"><i class="bi bi-person-plus"></i> Je souhaite me créer un
                            compte</a>
                        <a class="dropdown-item" href="#"><i class="bi bi-question-circle"></i> J'ai oublié mon mot de
                            passe</a>
                    </ul>
                </div>
        </div>
    </nav>
    <!-- Fin de Navbar -->

    <br><br>