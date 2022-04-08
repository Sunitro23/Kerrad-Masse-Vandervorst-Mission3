<?php
echo '<link href="newcss.css" rel="stylesheet">';
session_start();
if(isset($_SESSION['username'])){
    echo '<h3>Connecte en tant que '.$_SESSION['username'].'</h3>';
    echo '<a href="gestionBiens/ajoutbien.html">Ajouter un bien</a><br>';
    echo '<a href="gestionBiens/modifierbien.php">Modifier un bien</a><br>';
    echo '<a href="deconnexion.php">Se deconnecter</a>';
}
else{
    echo '<a href="pageConnexion.html">Se connecter</a>';
}