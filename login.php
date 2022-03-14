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
        unset($_SESSION['session']);
        $_SESSION["session"] = $username;
        echo '<meta http-equiv="refresh" content="1; url=index.php"/>';
    } else {
        echo '<h1>Erreur</h1>';
    }
}