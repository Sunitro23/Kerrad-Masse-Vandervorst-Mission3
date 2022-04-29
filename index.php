<?php
echo '<link href="newcss.css" rel="stylesheet"><script src="js/html2pdf.bundle.min.js"></script><script>function generatePdf() {const element = document.getElementById("pdf");html2pdf().from(element).save();}</script><body id="pdf">';
session_start();
if(isset($_SESSION['username'])){
    echo '<h3>Connecte en tant que '.$_SESSION['username'].'</h3>';
    echo '<a href="gestionBiens/ajoutbien.html">Ajouter un bien</a><br>';
    echo '<a href="gestionBiens/modifierbien.php">Modifier un bien</a><br>';
    echo '<a href="deconnexion.php">Se deconnecter</a>';
}
else{
    echo '<a href="pageConnexion.html">Se connecter</a>';
}
echo '<a href="tests/testgetTRi.php">Accèder aux biens</a><br></body>
<input type="button" onclick="generatePdf()" value="Télécharger au format pdf">';
