<?php
function getTri($connect, $type, $ville,$jardin,$prixmin, $prixmax, $surfacemin, $piecemin) {
    $requete = "SELECT * FROM bien JOIN image ON bien.id = image.idbien WHERE numImage=1";
    
    if ($type != 0) {$requete .= " AND idtype = :idtype";}
    if ($ville != "0"){$requete .= " AND ville = :ville";}
    if ($jardin) {$requete .= " AND jardin = 1";}
    if ($prixmin != null && $prixmax == null) {$requete .= " AND prix > :prixmin";}
    if ($prixmax != null && $prixmin == null) {$requete .= " AND prix < :prixmax";}
    if ($prixmax !=null && $prixmin != null) {$requete .= " AND prix BETWEEN :prixmin AND :prixmax";}
    if ($surfacemin != 0) {$requete .= " AND superficie > :surfacemin";}
    if ($piecemin != 0) {$requete .= " AND nbpieces > :piecemin";}
    
    $query = $connect->prepare($requete);
    
    if ($type != 0) {$query->bindValue(':idtype', $type, PDO::PARAM_STR);}
    if ($ville != "0") {$query->bindValue(':ville', $ville, PDO::PARAM_STR);}
    if ($prixmin != null) {$query->bindValue(':prixmin', $prixmin, PDO::PARAM_INT);}
    if ($prixmax != null) {$query->bindValue(':prixmax', $prixmax, PDO::PARAM_INT);}
    if ($surfacemin != 0) {$query->bindValue(':surfacemin', $surfacemin, PDO::PARAM_INT);}
    if ($piecemin != 0) {$query->bindValue(':piecemin', $piecemin, PDO::PARAM_INT);}
    $execute = $query->execute();
    $LesBiens = $query->fetchAll();
    return $LesBiens;

}

function getSelectType($connect) {
    //Requete
    $query = $connect->prepare('SELECT * FROM type');
    $execute = $query->execute();
    $LesTypes = $query->fetchAll();
    //Affichage Select HTML
    echo '<select name="typeSelect" id="typeSelect"><option value ="0">Trier Par Type</option>';
    foreach ($LesTypes as $unType) {
        echo'<option value ="' . $unType['idtype'] . '">' . $unType['libelle'] . '</option>';
    }
    echo '</select>';
}

function getSelectVille($connect) {
    //Requete
    $query = $connect->prepare('SELECT DISTINCT ville FROM bien');
    $execute = $query->execute();
    $LesVilles = $query->fetchAll();
    //Affichage Select HTML
    echo '<select name="villeSelect" id="villeSelect"><option value ="0">Trier Par Ville</option>';
    foreach ($LesVilles as $uneVille) {
        echo'<option value ="' . $uneVille['ville'] . '">' . $uneVille['ville'] . '</option>';
    }
    echo '</select>';
}

function getInfoBien($connect, $idbien) {
    $query = $connect->prepare('SELECT DISTINCT * FROM bien JOIN type ON type.idtype = bien.idtype WHERE bien.id = :idbien');
    $bv1 = $query->bindValue(':idbien', $idbien, PDO::PARAM_STR);
    $execute = $query->execute();
    $LeBien = $query->fetch();
    return $LeBien;
}

function getImgBien($connect, $idbien) {
    $query = $connect->prepare('SELECT * FROM image WHERE image.idbien = :idbien');
    $bv1 = $query->bindValue(':idbien', $idbien, PDO::PARAM_STR);
    $execute = $query->execute();
    $Image = $query->fetchAll();
    return $Image;
}

