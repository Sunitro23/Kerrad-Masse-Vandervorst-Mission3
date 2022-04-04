<?php

function getTri($connect, $type, $ville) {
    $requete = "SELECT * FROM bien INNER JOIN image ON bien.id = image.idbien WHERE 1=1 ";
    
    if ($type != 0) {$requete .= " AND idtype = :idtype";}
    if ($ville != "0"){$requete .= " AND ville = :ville";}
    
    $query = $connect->prepare($requete);
    
    if ($type != 0) {$bv1 = $query->bindValue(':idtype', $type, PDO::PARAM_STR);}
    if ($ville != "0") {$bv2 = $query->bindValue(':ville', $ville, PDO::PARAM_STR);}
    
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
