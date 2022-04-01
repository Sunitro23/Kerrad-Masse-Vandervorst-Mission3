<?php

session_start();
if (isset($_SESSION['username'])) {
    echo '<h2>Modifier un bien</h2><form action="modifierbien.php" method="post"><label for="id">Id du bien a modifier :</label><input type="text" id="id" name="id"><br><br><input type="submit" value="Valider"></form>';
} else {
    $idType = $_POST['id'];

    try {
        $connect = new PDO('mysql:host=localhost;dbname=bdd;charset=utf8', 'root', '');
    } catch (Exception $ex) {
        echo 'Connexion échouée : ' . $e->getMessage();
    }
    $inserer = $connect->prepare('SELECT * FROM bien WHERE id');
    $bind1 = $inserer->bindValue(':id', $id, PDO::PARAM_INT);
    $execute = $inserer->execute();

    if ($execute) {
        echo "<h2>Le bien a ete modifie</h2>";
    } else {
        echo "<h2>Erreur</h2>";
    }
}