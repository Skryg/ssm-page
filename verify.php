<?php
    if(!isset($_POST['posted'])){ header("Location: index.php"); exit(); }

    setcookie('completed', true, time()+86400*30);
    
?>