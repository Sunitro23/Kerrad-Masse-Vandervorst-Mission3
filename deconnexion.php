<?php
session_start();
session_unset($_SESSION['username']);
echo '<meta http-equiv="refresh" content="1; url=index.php"/>';