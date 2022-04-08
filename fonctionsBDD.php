<?php

function getTri($connect, $type, $ville,$jardin) {
    $requete = "SELECT * FROM bien JOIN image ON bien.id = image.idbien WHERE numImage=1 ";
    
    if ($type != 0) {$requete .= " AND idtype = :idtype";}
    if ($ville != "0"){$requete .= " AND ville = :ville";}
    if ($jardin) {$requete .= " AND jardin = :jardin";}
    
    $query = $connect->prepare($requete);
    
    if ($type != 0) {$query->bindValue(':idtype', $type, PDO::PARAM_STR);}
    if ($ville != "0") {$query->bindValue(':ville', $ville, PDO::PARAM_STR);}
    if ($jardin) {$query->bindValue(':jardin',1, PDO::PARAM_INT);}
    
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
    echo '</select><br>';
}
