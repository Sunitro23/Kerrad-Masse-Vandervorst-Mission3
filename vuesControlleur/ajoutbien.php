<?php

include_once '../inc/header.inc';
include_once '../BDD/fonctionsBDD.php';
if (isset($_SESSION['username'])) {
    echo '<form action="#" method="post">';
    include_once '../inc/form.inc';
    echo '<input type="submit" value="Valider"></form>';
    if (isset($_POST['jardin'])) {
        echo 'true';
    }
    if (isset($_POST['idType']) && $_POST['prix'] && $rue = $_POST['rue'] && $ville = $_POST['ville'] && $nbpieces = $_POST['nbpieces'] && $nbetages = $_POST['nbetages'] && $nbappartements = $_POST['nbappartements'] && $_POST['superficie']) {
        $idType = $_POST['idType'];
        if (isset($_POST['jardin'])) {
            $jardin = 1;
        } else {
            $jardin = 0;
        }
        $prix = $_POST['prix'];
        $rue = $_POST['rue'];
        $ville = $_POST['ville'];
        $nbpieces = $_POST['nbpieces'];
        $nbetages = $_POST['nbetages'];
        $nbappartements = $_POST['nbappartements'];
        $superficie = $_POST['superficie'];

        $connect = connect();
        $inserer = $connect->prepare('INSERT INTO bien(idtype, jardin, prix, rue, ville, nbpieces, nbetages, nbappartements, superficie)VALUES(:idType,:jardin,:prix,:rue,:ville,:nbpieces,:nbetages,:nbappartements,:superficie)');
        $bind1 = $inserer->bindValue(':idType', $idType, PDO::PARAM_INT);
        $bind2 = $inserer->bindValue(':jardin', $jardin, PDO::PARAM_INT);
        $bind3 = $inserer->bindValue(':prix', $prix, PDO::PARAM_INT);
        $bind4 = $inserer->bindValue(':rue', $rue, PDO::PARAM_STR);
        $bind5 = $inserer->bindValue(':ville', $ville, PDO::PARAM_STR);
        $bind6 = $inserer->bindValue(':nbpieces', $nbpieces, PDO::PARAM_INT);
        $bind7 = $inserer->bindValue(':nbetages', $nbetages, PDO::PARAM_INT);
        $bind8 = $inserer->bindValue(':nbappartements', $nbappartements, PDO::PARAM_INT);
        $bind9 = $inserer->bindValue(':superficie', $superficie, PDO::PARAM_INT);
        $execute = $inserer->execute();

        if ($execute) {
            echo "<h2>La page a ete creee</h2>";
        } else {
            echo "<h2>Erreur</h2>";
        }
    }
} else {
    echo '<h2>Veuillez renrter toutes les informations<h2> ';
}
include_once '../inc/footer.inc';
