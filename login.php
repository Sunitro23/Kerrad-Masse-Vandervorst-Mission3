<?php

$username = $_POST['username'];
$password = $_POST['password'];

include 'connexionbdd.php';

$query = $connect->prepare('SELECT * FROM user WHERE username="'.$username.'" and password="'. hash(sha256, $password).'"');
$bind1 = $inserer->bindValue(':username', $username, PDO::PARAM_STR);
$bind2 = $inserer->bindValue(':password', $password, PDO::PARAM_STR);
$nbcolumns = $query->columnCount();
$query->execute();
$nbcolumns = $query->columnCount();

if($nbcolumns==1){
    session_start();
    $_SESSION["newsession"]=$username;
    header("index.php");
}
else{
    echo '<h2>Erreur</h2>';
}