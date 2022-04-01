<?php


function getTri($pdo, $type, $ville) {
    //Verif si type/ville doit être trié ou pas
    if ($type != 0 && $ville != strval(0)) {
        
        $query = $pdo->prepare('SELECT * FROM image JOIN bien ON bien.id = image.idbien WHERE idtype = :type AND ville= :ville');
        $bind1 = $query->bindValue(':type', $type, PDO::PARAM_STR);
        $bind2 = $query->bindValue(':ville', $ville, PDO::PARAM_STR);
        
    } elseif ($type != 0) {
        
        $query = $pdo->prepare('SELECT * FROM image JOIN bien ON bien.id = image.idbien WHERE idtype = :type');
        $bind1 = $query->bindValue(':type', $type, PDO::PARAM_STR);
        
    } elseif ($ville !=  strval(0)) {
        
        $query = $pdo->prepare('SELECT * FROM image JOIN bien ON bien.id = image.idbien WHERE ville= :ville');
        $bind2 = $query->bindValue(':ville', $ville, PDO::PARAM_STR);
        
    } else {
        
        $query = $pdo->prepare('SELECT * FROM image JOIN bien ON bien.id = image.idbien');
    }
    
    //Execution
    $query->execute();
    $LesBiens = $query->fetchAll();
    return $LesBiens;
}

function getSelectType($pdo) {
    //Requete
    $query = $pdo->prepare('SELECT * FROM type');
    $execute = $query->execute();
    $LesTypes = $query->fetchAll();
    //Affichage Select HTML
    echo '<select name="typeSelect" id="typeSelect"><option value ="0">Trier Par Type</option>';
    foreach ($LesTypes as $unType) {
        echo'<option value ="' . $unType['idtype'] . '">' . $unType['libelle'] . '</option>';
    }
    echo '</select>';
}

function getSelectVille($pdo) {
    //Requete
    $query = $pdo->prepare('SELECT DISTINCT ville FROM bien');
    $execute = $query->execute();
    $LesVilles = $query->fetchAll();
    //Affichage Select HTML
    echo '<select name="villeSelect" id="villeSelect"><option value ="0">Trier Par Ville</option>';
    foreach ($LesVilles as $uneVille) {
        echo'<option value ="' . $uneVille['ville'] . '">' . $uneVille['ville'] . '</option>';
    }
    echo '</select>';
}

