<?php
// Rename this file to _dbselect.php and update the values below to match your own database username/password
session_start();
$_SESSION["dbname"] = "chits_development"; // Name of the mysql database (try "SHOW DATABASES;" on the mysql console
$_SESSION["dbuser"] = "chits_developer"; // mysql username that you are using to connect to the database
$_SESSION["dbpass"] = "password"; // mysql password that you are using to connect to the database
$conn = mysql_connect("localhost", $_SESSION["dbuser"], $_SESSION["dbpass"]);
$db->connectdb($_SESSION["dbname"]);
?>
