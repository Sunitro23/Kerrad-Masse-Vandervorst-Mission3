<?php

include '../connexionbdd.php';
include '../fonctionsBDD.php';
echo '
    <head>
        <link href="newcss.css" rel="../stylesheet">
    </head>
    <body>';
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
        echo '<div class="cadre">
            <img src="../' . $unBien['chemin'] . '" alt="'.$unBien['libelle'].'">
            </div>
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