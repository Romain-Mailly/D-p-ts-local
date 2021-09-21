<!-- Appel du header -->
<?php require "header.php" ; ?>

<h1> Bonjour </h1>
<h4>C'est carré comme un CUBE</h4>


<?php
if(isset($_SESSION["login"]))
{
    echo "admin <br>" ;
    echo $_SESSION["admin"] ;
}
else
{
    echo "pas d'admin" ;
}
?>

<?php require "footer.php" ; ?>