<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gameworld";

// Create connection with a new object
$conn = new mysqli($servername, $username, $password, $dbname) or die($conn->error);
?>