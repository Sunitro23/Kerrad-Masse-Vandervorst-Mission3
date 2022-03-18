<?php
function connexion(){
try {
    $connect = new PDO('mysql:host=localhost;dbname=krd;charset=utf8', 'root', '');
} catch (Exception $ex) {
    echo 'Connexion �chou�e : ' . $e->getMessage();
}
return $connect;
}