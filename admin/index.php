<?php
// Start output buffering to allow headers to be sent later
ob_start();

// Initialize timestamp and IP variables
$timestamp = date('Y-m-d H:i:s');
$ip = $_SERVER['REMOTE_ADDR'];

// Log access attempts if needed
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>System Security Alert</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex items-center justify-center">
    <div class="text-center p-8 bg-white rounded-lg shadow-lg">
        <h1 class="text-2xl md:text-3xl font-semibold text-red-600 mb-4">
            🚨 Security Alert: Access Detected 🚨
        </h1>
        <p class="text-gray-600 mb-4">
            Unauthorized access attempt has been logged.<br>
            IP address recorded and reported to cybersecurity team.
        </p>
        <div class="text-sm text-gray-500 animate-pulse">
            Initiating countermeasures...
        </div>
        <div class="mt-6">
            <a href="/" class="inline-block px-6 py-2 bg-red-600 text-white rounded hover:bg-red-700 transition-colors">
                Exit Immediately
            </a>
        </div>
    </div>
</body>
</html>
<?php
$logEntry = "$timestamp - IP: $ip\n";
$logFile = 'access_log.txt';
try {
    if (!file_put_contents($logFile, $logEntry, FILE_APPEND)) {
        error_log("Failed to write to access log");
    }
} catch (Exception $e) {
    error_log("Exception while writing to log: " . $e->getMessage());
}

// Add some fake delays and messages
sleep(2);
header("X-Security-Alert: Intrusion-Detection-Active");
header("X-Firewall-Status: Blocking");

// Pretend to initiate a trace
$fake_trace = [
    "Initiating backtrack...",
    "Reverse shell detected...",
    "Capturing session data...",
    "Reporting to authorities..."
];

foreach ($fake_trace as $message) {
    error_log($message);
    sleep(1);
}


// Add some fake loading elements via JavaScript
echo "<script>
    setTimeout(() => {
        document.body.innerHTML += '<div class=\"fixed bottom-4 left-4 bg-black text-green-500 p-4 font-mono text-sm\">Activating honeypot...</div>';
    }, 300);
    setTimeout(() => {
        document.body.innerHTML += '<div class=\"fixed top-4 right-4 bg-red-600 text-white p-2 rounded animate-pulse\">⚠️ Reverse tracking enabled</div>';
    }, 500);
</script>";

// Send some scary-looking headers
header("X-Threat-Level: Critical");
header("X-Neural-Network: Active");
header("X-Honeypot-Status: Engaged");

// Log with dramatic timestamps
$dramatic_messages = [
    "🕷️ Web crawler detected",
    "🎯 Target acquired",
    "🔒 Defense protocols activated",
    "📡 Signal triangulation in progress"
];

foreach ($dramatic_messages as $message) {
    error_log(date('[H:i:s.u]') . " $message");
    usleep(1000); // Add small delays
}