<?php

include_once '../connexionbdd.php';
session_start();
if (isset($_SESSION['username'])) {
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
        header('Location: ../tests/testgetTRi.php');
        exit();
    } else {
        echo '  <!DOCTYPE html><link href="../newcss.css" rel="stylesheet">
        <form action="#" method="POST">
        <label for="id">ID Bien :</label><br>
        <input type="text" id="idModif" name="idModif">
        <select name="idType">
        <option value=1>Appartement</option>
        <option value=2>Maison</option>
        <option value=3>Terrain</option>
        <option value=4>Local</option>
        <option value=5>Immeuble</option>
        </select><br>
        <label for="prix">Prix :</label><br>
        <input type="text" id="prix" name="prix"><br>
        <select name="jardin">
        <option value=1>Avec Jardin</option>
        <option value=0>Sans Jardin</option>
        </select><br>
        <label for="rue">Numero et rue :</label><br>
        <input type="text" id="rue" name="rue"><br>
        <label for="ville">Ville :</label><br>
        <input type="text" id="ville" name="ville"><br>
        <label for="nbpieces">Nombre de pieces :</label><br>
        <input type="text" id="nbpieces" name="nbpieces"><br>
        <label for="nbetages">Nombre detages :</label><br>
        <input type = "text" id = "nbetages" name = "nbetages"><br>
        <label for = "nbappartements">Nombre dappartements</label><br>
        <input type="text" id="nbappartements" name="nbappartements"><br>
        <label for="superficie">Superficie</label><br>
        <input type="text" id="superficie" name="superficie"><br>
        <input type="submit" value="Valider">
        </form>';
    }
}