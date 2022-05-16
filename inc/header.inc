<!DOCTYPE html>
<?php 
define('ROOTPATH', __DIR__);
echo '<link href="../css/newcss" rel="stylesheet">';?>
<html>
    <header>
        <br>
        <h1>GILBERT IMMO</h1>
        <br>
        <nav class="navMenu">
            <a href="../index.php">Accueil</a>
            <a href="../vuesControlleur/rechercheBien.php">Recherche</a>
            <?php
            session_start();
            if (isset($_SESSION['username'])){
            echo '<a href="../BDD/deconnexion.php">Se Déconnecter</a>
                  <a href="../index.php">Administration</a>';
            }else {
                echo '<a href="../login.php">Se Connecter</a>';
            }
            
            ?>
        </nav>
    </header>
    <br>
    <div id="pdf">
