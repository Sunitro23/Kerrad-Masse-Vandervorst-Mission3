<?php

include_once '../inc/header.inc';
include_once '../BDD/fonctionsBDD.php';
$connect = connect();
echo'<form action="#" method = "POST">';
$LesTypes = getSelectType($connect);
$LesVilles = getSelectVille($connect);
$lesId = getSelectId($connect);
?>
<select name="triOrdre" id="triOrdre">
    <option value ="0">Choisir Un Ordre</option>
    <option value =" ORDER BY ville">Trier Par Ville</option>
    <option value =" ORDER BY idtype">Trier Par Type</option>
    <option value =" ORDER BY prix">Trier Par Prix Croissant</option>
    <option value =" ORDER BY prix DESC">Trier Par Prix Decroissant</option>
</select></p>
<p><label for="prixmin">Prix min : </label></p>
<p><input type="text" id="prixmin" name="prixmin"></p>
<p><label for="prixmax">Prix max : </label></p>
<p><input type="text" id="prixmax" name="prixmax"></p>
<p><label for="surfacemin">Surface min : </label></p>
<p><input type="text" id="surfacemin" name="surfacemin"</p>
<p><label for="piecemin">Nombre de pieces min : </label></p>
<input type="text" id="piecemin" name="piecemin"<br>

<p><label for="jardin">Avec jardin </label><input type="checkbox" id="jardin" name="jardin" value="jardin"></p>
<br>
<input type="submit">
</form>
<?php

if(isset($_POST['idSelect']) && $_POST['idSelect']!=0){
$ref = $_POST['idSelect'];
$unBien = getRef($connect, $ref);
showBien($unBien);
}
else if (isset($_POST['typeSelect'])) {
    $type = $_POST['typeSelect'];
    $ville = $_POST['villeSelect'];
    $prixmin = $_POST['prixmin'];
    $prixmax = $_POST['prixmax'];
    $jardin = isset($_POST['jardin']) ? $_POST['jardin'] : NULL;
    $surfacemin = $_POST['surfacemin'];
    $piecemin = $_POST['piecemin'];
    $typeTri = $_POST['triOrdre'];
    $lesBiens = getTri($connect, $type, $ville, $jardin, $prixmin, $prixmax, $surfacemin, $piecemin, $typeTri);
    foreach ($lesBiens as $unBien) {
    showBien($unBien);
    }
}
include_once '../inc/footer.inc';
