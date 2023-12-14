
<?php
$servername = "localhost"; //Localhost from SQL
$username = "root"; // Use getenv() to retrieve environment variables
$password = "crapDotaggwp1X####"; // Use getenv() to retrieve environment variables
$dbname = "staff";

// Create a connection using PDO with prepared statements
try {
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
} catch (Exception $e) {
    // Handle any exceptions
    die("Connection failed: " . $e->getMessage());
}
?>
