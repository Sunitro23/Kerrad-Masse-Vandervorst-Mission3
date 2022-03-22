<?php

include '../connexionbdd.php';
include '../fonctionsBDD.php';

$pdo = connect();

echo '<form action="#" method = "POST">';

getSelectType($pdo);

getSelectVille($pdo);

echo '<input type="submit"></form>';

if (isset($_POST['typeSelect'])) {
    $type = $_POST['typeSelect'];
    $ville = $_POST['villeSelect'];
    $lesBiens = getTri($pdo, $type, $ville);
    foreach ($lesBiens as $unBien) {
        echo'<p> Prix :' . $unBien['prix'] . ' euros /  ';
        echo'Ville :' . $unBien['ville'] . ' / ';
        echo'Type :' . $unBien['idtype'] . '</p>';
    }
}