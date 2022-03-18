<?php

function getTri($pdo, $type, $ville) {
    if ($type > 0 & $ville != '0') {
        $query = $pdo->prepare('SELECT * FROM bien WHERE IDTYPE = :type AND VILLE= :ville');
    }elseif ($type > 0) {
        $query = $pdo->prepare('SELECT * FROM bien WHERE IDTYPE = :type');
    }elseif($ville>0){
        $query = $pdo->prepare('SELECT * FROM bien WHERE VILLE= :ville');
    }
    $bind1 = $query->bindValue(':type', $type, PDO::PARAM_STR);
    $bind2 = $query->bindValue(':ville', $ville, PDO::PARAM_STR);
    $query->execute();
    $LesLocaux = $query->fetchAll();
    return $LesLocaux;
}

function getSelectType($pdo) {
    $query = $pdo->prepare('SELECT * FROM type');
    $execute = $query->execute();
    $LesTypes = $query->fetchAll();
    echo '<select selected="0" name="typeSelect"><option value ="0">Trier Par Type</option>';
    foreach ($LesTypes as $unType) {
        echo'<option value ="' . $unType['IDTYPE'] . '">' . $unType['Libelle'] . '</option>';
    }
    echo '</select><button>Confirmer</button>';
}

function getSelectVille($pdo) {
    $query = $pdo->prepare('SELECT DISTINCT VILLE FROM bien');
    $execute = $query->execute();
    $LesVilles = $query->fetchAll();
    echo '<select selected="0" name="typeSelect"><option value ="0">Trier Par Ville</option>';
    foreach ($LesVilles as $uneVille) {
        echo'<option value ="' . $uneVille['VILLE'] . '">' . $uneVille['VILLE'] . '</option>';
    }
    echo '</select><button>Confirmer</button>';
}
