<?php

include 'connexionbdd.php';
include 'fonctionsBDD.php';
$connect = connexion();
getSelectType($connect);
echo '<br></br>';
getSelectVille($connect);
echo '<br></br>';
getTri($connect, 1, 'Roubaix');
    