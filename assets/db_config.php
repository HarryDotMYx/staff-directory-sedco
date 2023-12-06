<?php
$servername = "localhost";
$username = "root";
$password = "crapDotaggwp1X####";
$dbname = "staff";

// Create a connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>