<?php

include_once '../inc/header.inc';
include_once '../BDD/fonctionsBDD.php';
if (isset($_SESSION['username'])) {
    session_start();
    echo'
        <form action="#" method="POST">
        <label for="idSuppr">ID du bien à supprimer :</label>
        <input type="text" name="idSuppr" id="idSuppr"><br>
        <input type="submit" value="Valider">
        </form>';
    if (isset($_POST['idSuppr'])) {
        $connect = connect();
        deleteBien($connect, $_POST['idSuppr']);
    }
} else {
    echo 'Non connecté';
}
include_once '../inc/footer.inc';
