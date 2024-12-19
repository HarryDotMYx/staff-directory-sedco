<?php
header('Content-Type: text/html; charset=utf-8');

function generateAlienMessage() {
    $symbols = ['☆', '◇', '○', '△', '□', '♢', '⚡', '✧'];
    $length = rand(5, 15);
    $message = '';
    
    for ($i = 0; $i < $length; $i++) {
        $message .= $symbols[array_rand($symbols)];
    }
    
    return $message;
}

$alienMessages = [
    "Greetings Earthlings!",
    "We come in peace",
    "Take me to your leader",
    "Beep boop beep",
    "Error 404: Planet not found"
];

echo "<div style='background: #000; color: #0f0; padding: 20px; font-family: monospace;'>";
echo "<h2>🛸 Alien Communication Terminal 👽</h2>";
echo "<p>" . $alienMessages[array_rand($alienMessages)] . "</p>";
echo "<p>Encrypted message: " . generateAlienMessage() . "</p>";
echo "<p>Signal strength: " . rand(1, 100) . "%</p>";
echo "</div>";
?>
