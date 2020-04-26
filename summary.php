<?php (!isset($_COOKIE['completed']))? header("Location:index.php") : $id = $_COOKIE['completed'];
require_once 'database.php';
$db = new DBase;
$points = $db->query("SELECT points from `cdata` WHERE id=$id");
unset($db);
?> 