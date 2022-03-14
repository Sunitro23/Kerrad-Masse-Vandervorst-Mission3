<?php

$idType = $_POST['idType'];
$jardin = $_POST['jardin'];
$prix = $_POST['prix'];
$rue = $_POST['rue'];
$ville = $_POST['ville'];
$nbpieces = $_POST['nbpieces'];
$nbetages = $_POST['nbetages'];
$nbappartements = $_POST['nbappartements'];
$superficie = $_POST['superficie'];

try {
    $connect = new PDO('mysql:host=localhost;dbname=bdd;charset=utf8', 'root', '');
} catch (Exception $ex) {
    echo 'Connexion échouée : ' . $e->getMessage();
}
$inserer = $connect->prepare('INSERT INTO bien(idtype, jardin, prix, rue, ville, nbpieces, nbetages, nbappartements, superficie)VALUES(:idType,:jardin,:prix,:rue,:ville,:nbpieces,:nbetages,:nbappartements,:superficie)');
$bind1 = $inserer->bindValue(':idType', $idType, PDO::PARAM_INT);
$bind2 = $inserer->bindValue(':jardin', $jardin, PDO::PARAM_BOOL);
$bind3 = $inserer->bindValue(':prix', $prix, PDO::PARAM_INT);
$bind4 = $inserer->bindValue(':rue', $rue, PDO::PARAM_STR);
$bind5 = $inserer->bindValue(':ville', $ville, PDO::PARAM_STR);
$bind6 = $inserer->bindValue(':nbpieces', $nbpieces, PDO::PARAM_INT);
$bind7 = $inserer->bindValue(':nbetages', $nbetages, PDO::PARAM_INT);
$bind8 = $inserer->bindValue(':nbappartements', $nbappartements, PDO::PARAM_INT);
$bind9 = $inserer->bindValue(':superficie', $superficie, PDO::PARAM_INT);
$execute = $inserer->execute();

if($execute){
    echo "<h2>La page à été créée</h2>";
}
else{
    echo "<h2>Erreur</h2>";
}