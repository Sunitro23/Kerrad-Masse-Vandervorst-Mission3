<?php
include_once '../inc/header.inc';
include_once '../BDD/fonctionsBDD.php';
session_start();
if (isset($_SESSION['username'])) {
    echo '<form action="#" method="post">';
    include '../inc/form.inc';
    echo '<label for="id">ID Bien :</label><input type="text" id="idModif" name="idModif"><br><input type="submit" value="Valider"></form>';
    if (isset($_POST['idModif'])) {
//Initialisation Variable
        $id = $_POST['idModif'];
        $idType = $_POST['idType'];
        $jardin = $_POST['jardin'];
        $prix = $_POST['prix'];
        $rue = $_POST['rue'];
        $ville = $_POST['ville'];
        $nbpieces = $_POST['nbpieces'];
        $nbetages = $_POST['nbetages'];
        $nbappartements = $_POST['nbappartements'];
        $superficie = $_POST['superficie'];
//Connection
        $connect = connect();
        $inserer = $connect->prepare('UPDATE bien SET idtype = :idType, jardin = :jardin,prix = :prix, rue = :rue, ville = :ville, nbpieces = :nbpieces, nbetages = :nbetages, nbappartements = :nbappartements, superficie = :superficie WHERE id = :id');
//Bind Value
        $inserer->bindValue(':idType', $idType, PDO::PARAM_INT);
        $inserer->bindValue(':jardin', $jardin, PDO::PARAM_INT);
        $inserer->bindValue(':prix', $prix, PDO::PARAM_INT);
        $inserer->bindValue(':rue', $rue, PDO::PARAM_STR);
        $inserer->bindValue(':ville', $ville, PDO::PARAM_STR);
        $inserer->bindValue(':nbpieces', $nbpieces, PDO::PARAM_INT);
        $inserer->bindValue(':nbetages', $nbetages, PDO::PARAM_INT);
        $inserer->bindValue(':nbappartements', $nbappartements, PDO::PARAM_INT);
        $inserer->bindValue(':superficie', $superficie, PDO::PARAM_INT);
        $inserer->bindValue(':id', $id, PDO::PARAM_INT);
        $execute = $inserer->execute();
        if (!$execute) {
            echo "<!DOCTYPE html><h2>Erreur</h2>";
        }
        header('Location: ../gestionBiens/listeBien.php');
        exit();
    }
}
include_once '../inc/footer.inc';