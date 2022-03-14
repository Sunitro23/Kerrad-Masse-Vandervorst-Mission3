<?php
session_start();
if(isset($_SESSION['session'])){
    echo 'ca marche';
}
else{
    echo 'ca marche pas';
}