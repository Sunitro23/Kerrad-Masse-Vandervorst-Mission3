<?php

include_once 'connexionbdd.php';
try {
    $hash=password_hash("admin", PASSWORD_BCRYPT);
    $connect=connect();
    $query = $connect->prepare("INSERT INTO user VALUES (null,'admin','" . $hash . "')");
    $query->execute();
} catch (Exception $e) {
    echo 'Erreur';
}