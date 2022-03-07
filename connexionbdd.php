<?php

try {
    $connect = new PDO('mysql:host=localhost;dbname=bdd;charset=utf8', 'root', '');
} catch (Exception $ex) {
    echo 'Connexion échouée : ' . $e->getMessage();
}