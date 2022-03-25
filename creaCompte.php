<?php

include_once 'connexionbdd.php';
try {
    $hash=password_hash("admin", PASSWORD_BCRYPT);
    $query = $connect->prepare("INSERT INTO user VALUES (null,'admin','" . $hash . "')");
    $query->execute();
} catch (Exception $e) {
    echo 'Erreur';
}