<?php
header('Content-Type: text/html; charset=utf-8');

function generateAlienMessage() {
    $symbols = ['?', '?', '?', '?', '?', '?', '?', '?'];
    $length = rand(5, 15);
    $message = '';
    
    for ($i = 0; $i < $length; $i++) {
        $message .= $symbols[array_rand($symbols)];
    }
    
    return $message;
}

$alienMessages = [
    "?? Greetings Earthlings!",
    "?? We come in peace",
    "?? Take me to your leader",
    "?? Beep boop beep",
    "?? Error 404: Planet not found"
];
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        .loading-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.9);
            z-index: 1000;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #00ff00;
            font-size: 1.5rem;
            font-family: monospace;
            flex-direction: column;
        }
        .hidden { display: none; }
    </style>
    <script>
        let progress = 0;

        function updateProgress() {
            const loadingText = document.getElementById('loadingText');
            const loadingOverlay = document.getElementById('loading');
            const content = document.getElementById('content');
            progress++;

            loadingText.textContent = `?? Loading Alien Messages... ${progress}% ??`;

            if (progress >= 100) {
                clearInterval(progressInterval);
                loadingOverlay.classList.add('hidden');
                content.classList.remove('hidden');
            }
        }

        let progressInterval = setInterval(updateProgress, 50); // Speed adjustable
    </script>
</head>
<body class="bg-gray-900 min-h-screen flex items-center justify-center p-4">
    <!-- Loading Screen -->
    <div id="loading" class="loading-overlay">
        <div id="loadingText">?? Loading Alien Messages... 1% ??</div>
    </div>

    <!-- Alien Communication Terminal -->
    <div class="max-w-md w-full bg-black rounded-lg shadow-2xl overflow-hidden border border-green-500 hidden" id="content">
        <div class="p-6">
            <h2 class="text-2xl font-bold text-green-500 mb-6 flex items-center justify-center gap-2">
                <span>??</span> 
                Alien Communication Terminal 
                <span>??</span>
            </h2>
            
            <div class="space-y-4">
                <div class="bg-gray-900 p-4 rounded-lg border border-green-400/20">
                    <p class="text-green-400 font-mono">
                        <?= htmlspecialchars($alienMessages[array_rand($alienMessages)], ENT_QUOTES, 'UTF-8') ?>
                    </p>
                </div>
                
                <div class="bg-gray-900 p-4 rounded-lg border border-green-400/20">
                    <p class="text-green-400 font-mono">
                        Encrypted message: <?= htmlspecialchars(generateAlienMessage(), ENT_QUOTES, 'UTF-8') ?>
                    </p>
                </div>
                
                <div class="bg-gray-900 p-4 rounded-lg border border-green-400/20">
                    <p class="text-green-400 font-mono">
                        Signal strength: <?= htmlspecialchars(rand(1, 100), ENT_QUOTES, 'UTF-8') ?>%
                    </p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
