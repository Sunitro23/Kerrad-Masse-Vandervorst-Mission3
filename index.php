<?php

include_once './inc/headerRoot.inc';
include 'BDD/fonctionsBDD.php';
if (isset($_SESSION['username'])) {
    echo '<h3>Connecte en tant que ' . $_SESSION['username'] . '</h3>
    <a href="vuesControlleur/ajoutbien.php">Ajouter un bien</a><br>
    <a href="vuesControlleur/modifierbien.php">Modifier un bien</a><br>
    <a href="vuesControlleur/supprimerBien.php">Supprimer un bien</a><br>
    <a href="vuesControlleur/RechercheBien.php">Accèder aux biens</a><br></body>';
} else {
    echo '<a href="vuesControlleur/rechercheBien.php">Accèder aux biens</a><br></body>';
}
include_once './inc/footer.inc';
