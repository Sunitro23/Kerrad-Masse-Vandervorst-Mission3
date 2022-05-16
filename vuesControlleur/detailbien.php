<?php
include_once '../BDD/fonctionsBDD.php';
include_once '../inc/header.inc';
$connect = connect();
$LeBien = getInfoBien($connect, 4);
$Image = getImgBien($connect, 4);
echo '<div class="slideshow-container">';

foreach ($Image as $uneImage) {
    echo '
    <div class="mySlides fade">
        <div class="numbertext">' . $uneImage['numImage'] . ' / 5</div>
        <img src="..' . $uneImage['chemin'] . '" alt="" style="width:100%">
    </div>';
}
?>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>

<div class="detailbien">
    <h3>Caractéristiques du bien</h3>

    <?php
    echo '<h3>Nombre de pièces : ' . $LeBien['nbpieces'] . '</h3>
<h3>Superficie : ' . $LeBien['superficie'] . '</h3>
<h3>Prix : ' . $LeBien['prix'] . '</h3>';
    if ($LeBien['jardin']) {
        echo '<h3>Jardin : Oui</h3>';
    } else {
        echo '<h3>Jardin : Non</h3>';
    }
    echo '<h3>Type : ' . $LeBien['libelle'] . '</h3>';
    include_once '../inc/footer.inc';
    