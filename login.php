<?php
$username = $_POST['username'];
$password = $_POST['password'];

include 'connexionbdd.php';

$query = $connect->prepare('SELECT * FROM user');
$query->execute();
$resultats = $query->fetchAll();

foreach ($resultats as $resultat) {
    if ($resultat['username'] == $username && $resultat['password'] == $password) {
        session_start();
        $_SESSION['username'] = $username;
        $id_session= session_id();
        echo '<meta http-equiv="refresh" content="1; url=index.php"/>';
    } else {
        echo '<h1>Erreur</h1>';
    }
}