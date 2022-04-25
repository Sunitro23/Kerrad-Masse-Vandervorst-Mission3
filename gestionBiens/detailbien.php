<?php

include '../connexionbdd.php';
include '../fonctionsBDD.php';
$connect = connect();
$LeBien = getInfoBien($connect, 1);
$Image = getImgBien($connect, 1);
echo '<!DOCTYPE html><html><head><link href="../newcss.css" rel="stylesheet">
    
</head>';

getMenu();

echo '<body>
    <div class="slideshow-container">';
foreach ($Image as $uneImage) {
    echo '
    <div class="mySlides fade">
        <div class="numbertext">'.$uneImage['numImage'].' / 5</div>
        <img src="..' . $uneImage['chemin'] . '" alt="" style="width:100%">
    </div>';
}

echo '
<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>

<div class="detailbien">
<h3>Caractéristiques du bien</h3>
<h3>Nombre de pièces : ' . $LeBien['nbpieces'] . '</h3>
<h3>Superficie : ' . $LeBien['superficie'] . '</h3>
<h3>Prix : ' . $LeBien['prix'] . '</h3>';
if ($LeBien['jardin']) {
    echo '<h3>Jardin : Oui</h3>';
} else {
    echo '<h3>Jardin : Non</h3>';
}
echo '<h3>Type : ' . $LeBien['libelle'] . '</h3>
<p></p>
</div>
<script type="text/javascript" src="../js/carroussel.js"></script>
</body></html>';

