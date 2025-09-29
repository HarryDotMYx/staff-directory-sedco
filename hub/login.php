<?php
// login.php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Database connection
    $conn = new mysqli('localhost', 'staff', 'Kucing2024X', 'staff');

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Query to check user
    $stmt = $conn->prepare("SELECT * FROM users WHERE email = ?");
    $stmt->bind_param('s', $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();
        if (password_verify($password, $user['password'])) {
            session_start();
            $_SESSION['user'] = $email;
            header('Location: dashboard.php');
            exit();
        } else {
            echo "<p class='text-red-500 text-center mt-4'>Invalid email or password.</p>";
        }
    } else {
        echo "<p class='text-red-500 text-center mt-4'>Invalid email or password.</p>";
    }

    $stmt->close();
    $conn->close();
}
?>
