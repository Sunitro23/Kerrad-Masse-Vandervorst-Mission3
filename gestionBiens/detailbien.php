<?php

include '../connexionbdd.php';
include '../fonctionsBDD.php';
$connect = connect();
$LeBien = getInfoBien($connect, 1);
$Image = getImgBien($connect, 1);
echo '<!DOCTYPE html><link href="../newcss.css" rel="stylesheet">
    
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
<script type="text/javascript">
   $(function(){
      setInterval(function(){
         $(".slideshow ul").animate({marginLeft:-600},800,function(){
            $(this).css({marginLeft:0}).find("li:last").after($(this).find("li:first"));
         })
      }, 3500);
   });
</script>';
getMenu();
echo '<div class="slideshow">
<ul>';
foreach ($Image as $uneImage) {
    echo '<li><img src="..' . $uneImage['chemin'] . '" alt="" width="600" height="600"></li>';
}

echo '</div>
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
</div>';

