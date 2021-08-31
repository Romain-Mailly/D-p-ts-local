<?php
$title = 'Jarditou | Accueil' ;
require "header.php" ;
?>
<br><br>
    <div class="text-light shadow-lg p-3">
            <?php if (isset($_SESSION["login"])) {echo "Coucou l'admin";} else{ echo "Coucou le gros NULOS" ;} ?>
            <p class="h2">L'entreprise</p>
            <hr class="bg-light">
            <p>Notre entreprise familiale met tout son savoir-faire à votre disposition dans le domaine du jardin et du paysagisme.</p>
            <p>Créée il y a 70 ans, notre entreprise vend fleurs, arbustes, matériel à main et motorisés.</p>
            <p>Implantés à Amiens, nous intervenons dans tout le département de la Somme : Albert, Doullens, Péronne, Abbeville, Corbie</p>
            <p class="h2">Qualité</p>
            <hr class="bg-light">
            <p>Nous mettons à votre disposition un service personnalisé, avec 1 seul interlocuteur durant tout votre projet. Vous serez séduit par notre expértise, nos compétences et notre sérieux.</p>
            <p class="h2">Devis gratuit</p>
            <hr class="bg-light">
            <p>Vous pouvez bien sûr contacter pour de plus amples informations ou pour une demande d'intervention. Vous souhaitez un devis ? Nous vous le réalisons gratuitement. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores enim voluptatibus soluta perferendis soluta perferendis exercitationem eum nisi nesciunt quod quidem, facilis, sequi explicabo illo ex consequatum amet quibusdam reprehenderit assumenda modi laborum placeat ?.</p>
            <br>
        </div>
        <br>
        <?php require "footer.php" ; ?>

