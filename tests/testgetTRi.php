<?php
include '../connexionbdd.php';
include '../fonctionsBDD.php';
$pdo = connect();
?>

<!DOCTYPE html>
<link href="../newcss.css" rel="stylesheet">
<form action="#" method = "POST">
    <?php
    $LesTypes = getSelectType($pdo);
    $LesVilles = getSelectVille($pdo);
    ?>
    <input type="submit"></form>
<?php
if (isset($_POST['typeSelect'])) {
    $type = $_POST['Type'];
    $ville = $_POST['Ville'];
    $lesBiens = getTri($pdo, $type, $ville);
    foreach ($lesBiens as $unBien) {
        echo '<div class="cadre">
            <img src="..' . $unBien['chemin'] . '" alt="' . $unBien['libelle'] . '" width="300" height="300">
            </div>
             <div class="prop-bien">
                <p>' . $unBien['prix'] . '€</p>
                <p>' . $unBien['idtype'] . '</p>
                <p>' . $unBien['ville'] . ' ' . $unBien['rue'] . '</p>
                <p>' . $unBien['nbpieces'] . ' pièces</p>
                <p>' . $unBien['superficie'] . ' mètres carrés</p>
             </div>
        </div>
        </body>';
    }
}
?>