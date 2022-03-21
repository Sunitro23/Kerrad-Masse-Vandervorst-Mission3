<?php

include 'connexionbdd.php';
include 'fonctionsBDD.php';
$connect = connexion();
Menus($connect);
$type = $_POST['typeSelect'];
$ville = $_POST['villeSelect'];
$lesBiens = getTri($connect, $type, $ville);
foreach ($lesBiens as $unBien) {
        echo'<p>' . $unBien['PRIX'] . ' euros </p>';
    }