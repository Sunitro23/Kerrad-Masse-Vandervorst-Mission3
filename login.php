<?php
$username = $_POST['username'];
$password = $_POST['password'];

include 'connexionbdd.php';
$connect=connect();
$query = $connect->prepare('SELECT * FROM user');
$query->execute();
$resultats = $query->fetchAll();

foreach ($resultats as $resultat) {
    if ($resultat['username'] == $username && password_verify($password,$resultat['password'])){
        session_start();
        $_SESSION['username'] = $username;
        $id_session= session_id();
        echo '<meta http-equiv="refresh" content="1; url=index.php"/>';
    } else {
        echo '<h1>Erreur de connexion</h1>';
    }
}