<?php

include '../connexionbdd.php';
include '../fonctionsBDD.php';
$connect = connect();
echo'<!DOCTYPE html><link href="../newcss.css" rel="stylesheet"><form action="#" method = "POST">';
$LesTypes = getSelectType($connect);
$LesVilles = getSelectVille($connect);
echo '<label for="jardin">Avec jardin</label><input type="checkbox" id="jardin" name="jardin" value="jardin"><br>
<label for="prixmin">Prix min    :   </label><input type="text" id="prixmin" name="prixmin">
<br><label for="prixmax">Prix max    :   </label><input type="text" id="prixmax" name="prixmax"<br>
<br><label for="surfacemin">Surface min    :   </label><input type="text" id="surfacemin" name="surfacemin"<br>
<br><label for="piecemin">Nombre de pieces min    :   </label><input type="text" id="piecemin" name="piecemin"<br>
<input type="submit"></form> '
;

if (isset($_POST['typeSelect'])) {
    $type = $_POST['typeSelect'];
    $ville = $_POST['villeSelect'];
    $prixmin = $_POST['prixmin'];
    $prixmax = $_POST['prixmax'];
    $jardin = isset($_POST['jardin']) ? $_POST['jardin'] : NULL;
    $surfacemin = $_POST['surfacemin'];
    $piecemin = $_POST['piecemin'];

    
    $lesBiens = getTri($connect, $type, $ville,$jardin,$prixmin, $prixmax, $surfacemin, $piecemin);
    foreach ($lesBiens as $unBien) {
        echo '<div class="cadre">
            <img src="..' . $unBien['chemin'] . '" alt="' . $unBien['libelle'] . '" width="300" height="300">
                <div class="prop-bien">
                    <p>' . $unBien['prix'] . '€</p>
                    <p>' . $unBien['ville'] . ' ' . $unBien['rue'] . '</p>
                    <p>' . $unBien['nbpieces'] . ' pièces</p>
                    <p>' . $unBien['superficie'] . ' mètres carrés</p>
                </div>
            </div>
        </body>';
    }
}
