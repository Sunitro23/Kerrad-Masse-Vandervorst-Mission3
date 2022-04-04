<?php

include '../connexionbdd.php';
include '../fonctionsBDD.php';
$pdo = connect();
echo'<!DOCTYPE html><link href="../newcss.css" rel="stylesheet"><form action="#" method = "POST">';
$LesTypes = getSelectType($pdo);
$LesVilles = getSelectVille($pdo);
echo '<label for="jardin">Avec jardin</label><input type="checkbox" id="jardin" name="jardin" value="jardin"><br><input type="submit"></form>';

if (isset($_POST['typeSelect'])) {
    $type = $_POST['typeSelect'];
    $ville = $_POST['villeSelect'];
    if ($_POST['jardin']=="jardin"){
        $jardin=true;
    }
    else{
        $jardin=false;
    }
    $lesBiens = getTri($pdo, $type, $ville,$jardin);
    foreach ($lesBiens as $unBien) {
        echo '<div class="cadre">
            <img src="..' . $unBien['chemin'] . '" alt="' . $unBien['libelle'] . '" width="300" height="300">
                <div class="prop-bien">
                    <p>' . $unBien['prix'] . '€</p>
                    <p>' . $unBien['idtype'] . '</p>
                    <p>' . $unBien['ville'] . ' ' . $unBien['rue'] . '</p>
                    <p>' . $unBien['nbpieces'] . ' pièces</p>
                    <p>' . $unBien['superficie'] . ' mètres carrés</p>
                </div>
            </div>
        </body>';
    }
}