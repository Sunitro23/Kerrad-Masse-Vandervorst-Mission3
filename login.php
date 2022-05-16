<?php
include_once 'inc/header.inc';
include_once 'BDD/fonctionsBDD.php';
if (isset($_POST['username']) && isset($_POST['password'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    Login(connect(), $password, $username);
}
?>

<form action="#" method="post">
    <p><label for="username">Entrez votre nom d'utilisateur :</label></p>
    <input type="text" name="username" id="username" required><br>
    <p><label for="password">Entrez votre mot de passe :</label></p>
    <input type="password" name="password" id="password"><br>
    <input type="submit" value="Se connecter">
</form>
<?php include_once 'inc/footer.inc';