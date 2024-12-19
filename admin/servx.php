<?php
// Define authorized username and password
$valid_user = 'admin';
$valid_password = 'secret';

// Check if the correct credentials are provided
if (!isset($_SERVER['PHP_AUTH_USER']) || !isset($_SERVER['PHP_AUTH_PW']) ||
    $_SERVER['PHP_AUTH_USER'] != $valid_user || $_SERVER['PHP_AUTH_PW'] != $valid_password) {
    
    // Send headers to prompt the user for credentials
    header('WWW-Authenticate: Basic realm="Protected Area"');
    header('HTTP/1.0 401 Unauthorized');
    
    // Show a message when the user cancels the authentication
    echo 'Unauthorized access. Please provide valid credentials.';
    exit;
} else {
    // If correct credentials are provided, show the content
    echo "<h1>Welcome, {$valid_user}</h1>";
    echo "<p>You have successfully logged in using Basic Authentication.</p>";
    // Add your protected content here
}
?>
