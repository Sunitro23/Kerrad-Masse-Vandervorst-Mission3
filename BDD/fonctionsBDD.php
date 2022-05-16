<?php

function connect() {

    try {
        $connect = new PDO('mysql:host=localhost;dbname=bdd;charset=utf8', 'root', '');
    } catch (Exception $e) {
        echo 'Connexion �chou�e : ' . $e->getMessage();
    }
    return $connect;
}

function login($connect, $password, $username) {
    $query = $connect->prepare('SELECT * FROM user');
    $query->execute();
    $resultats = $query->fetchAll();
    foreach ($resultats as $resultat) {
        if ($resultat['username'] == $username && password_verify($password, $resultat['password'])) {
            session_start();
            $_SESSION['username'] = $username;
            $id_session = session_id();
            echo '<meta http-equiv="refresh" content="1; url=index.php"/>';
        } else {
            echo '<h1>Erreur de connexion</h1>';
        }
    }
}

function disconnect() {
    session_start();
    session_unset();
    echo 'nigga';
    Header('Location: ' . $_SERVER['PHP_SELF']);
}

function getTri($connect, $type, $ville, $jardin, $prixmin, $prixmax, $surfacemin, $piecemin, $typeTri) {
    $requete = "SELECT * FROM bien JOIN image ON bien.id = image.idbien WHERE numImage=1";

    if ($type != "0") {$requete .= ' AND idtype = "'.$type.'"';}
    if ($ville != "0") {$requete .= ' AND ville = "'.$ville.'"';}
    if ($jardin) {$requete .= " AND jardin = 1";}
    if ($prixmin != null && $prixmax == null) {$requete .= " AND prix > :prixmin";}
    if ($prixmax != null && $prixmin == null) {$requete .= " AND prix < :prixmax";}
    if ($prixmax != null && $prixmin != null) {$requete .= " AND prix BETWEEN :prixmin AND :prixmax";}
    if ($surfacemin != null) {$requete .= " AND superficie > :surfacemin";}
    if ($piecemin != null) {$requete .= " AND nbpieces > :piecemin";}
    if ($typeTri != "0") {$requete .= $typeTri;}
    $query = $connect->prepare($requete);

    if ($type != "0") {$query->bindValue(':idtype', $type, PDO::PARAM_STR);}
    if ($ville != "0") {$query->bindValue(':ville', $ville, PDO::PARAM_STR);}
    if ($prixmin != null) {$query->bindValue(':prixmin', $prixmin, PDO::PARAM_STR);}
    if ($prixmax != null) {$query->bindValue(':prixmax', $prixmax, PDO::PARAM_STR);}
    if ($surfacemin != null) {$query->bindValue(':surfacemin', $surfacemin, PDO::PARAM_STR);}
    if ($piecemin != null) {$query->bindValue(':piecemin', $piecemin, PDO::PARAM_STR);}
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

function getSelectId($connect) {
    $query = $connect->prepare('SELECT DISTINCT id,rue,ville FROM bien');
    $execute = $query->execute();
    $lesId = $query->fetchAll();
    echo '<select name="idSelect" id="idSelect"><option value ="0">Rechercher par référence</option>';
    foreach ($lesId as $unId) {
        echo'<option value ="' . $unId['id'] . '">' . $unId['rue'] ." à ". $unId['ville'] . '</option>';
    }
    echo '</select>';
}

function getRef($connect, $ref) {
    $query = $connect->prepare('SELECT * FROM bien JOIN image ON bien.id = image.idbien WHERE numImage=1 AND id = "' . $ref . '"');
    $execute = $query->execute();
    return $query->fetch();
}

function showBien($unBien) {
        echo '
<a href="detailbien.php">
    <div class="cadre">

        <img src="..' . $unBien['chemin'] . '" alt="' . $unBien['libelle'] . '" width="300" height="300">

        <div class="prop-bien">
            <p>' . $unBien['prix'] . '</p>
            <p>' . $unBien['ville'] . ' ' . $unBien['rue'] . '</p>
            <p>' . $unBien['nbpieces'] . ' pièces</p>
            <p>' . $unBien['superficie'] . ' mètres carrés</p>
        </div>
    </div>
</a>';
}

function getInfoBien($connect, $idbien) {
    $query = $connect->prepare('SELECT DISTINCT * FROM bien JOIN type ON type.idtype = bien.idtype WHERE bien.id = :idbien');
    $bv1 = $query->bindValue(':idbien', $idbien, PDO::PARAM_STR);
    $execute = $query->execute();
    return $query->fetchAll();
}

function getImgBien($connect, $idbien) {
    $query = $connect->prepare('SELECT * FROM image WHERE image.idbien = :idbien');
    $bv1 = $query->bindValue(':idbien', $idbien, PDO::PARAM_STR);
    $execute = $query->execute();
    return $query->fetchAll();
}

function deleteBien($connect, $idbien) {
    $supprimer = $connect->prepare('DELETE FROM bien WHERE id = :id');
    $supprimer->bindValue(':id', $id, PDO::PARAM_INT);
    $execute = $supprimer->execute();
    if (!$execute) {
        echo "<h2>Erreur</h2>";
    } else {
        echo '<h2>Le bien à été supprimé<h2>';
    }
}
