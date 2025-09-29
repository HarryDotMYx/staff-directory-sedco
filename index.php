<?php
declare(strict_types=1);

// Initialize session and error reporting
session_start();
error_reporting(E_ALL);
ini_set('display_errors', '0');

// Load configuration and utilities
require_once './assets/db_config.php';
require_once './assets/header.php';

// User data handling class
class UserProfile {
    private ?array $userData = null;
    private mysqli $db;

    public function __construct(mysqli $db) {
        $this->db = $db;
    }

    public function loadUser(int $userId): bool {
        if ($userId <= 0) {
            return false;
        }

        $stmt = $this->db->prepare("SELECT * FROM users WHERE id = ?");
        if (!$stmt) {
            throw new Exception("Failed to prepare statement: " . $this->db->error);
        }

        $stmt->bind_param("i", $userId);
        if (!$stmt->execute()) {
            throw new Exception("Failed to execute query: " . $stmt->error);
        }

        $result = $stmt->get_result();
        $this->userData = $result->fetch_assoc();
        $stmt->close();
        
        return $this->userData !== null;
    }

    public function getUserData(): ?array {
        return $this->userData;
    }

    public function getValue(string $key): string {
        return htmlspecialchars($this->userData[$key] ?? '', ENT_QUOTES, 'UTF-8');
    }
}

// Get user ID from URL with validation
$userId = filter_input(INPUT_GET, 'user', FILTER_VALIDATE_INT) ?? 0;

try {
    // Create database connection using existing mysqli connection from db_config.php
    $profile = new UserProfile($conn);
    $userFound = $profile->loadUser($userId);
    $userData = $profile->getUserData();

} catch (Exception $e) {
    // Log error and show user-friendly message
    error_log("Database Error: " . $e->getMessage());
    die("We're experiencing technical difficulties. Please try again later.");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $userFound ? $profile->getValue('full_name') . ' - SEDCO Staff Directory' : 'SEDCO Staff Directory' ?></title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/styles.css">
</head>
<body class="min-h-screen">
    <?php if (!$userFound): ?>
    <!-- Error State -->
    <div class="flex items-center justify-center min-h-screen p-4">
        <div class="glass-effect rounded-lg shadow-xl max-w-md w-full p-6 text-center animate-fadeIn">
            <img src="./img/logosedco.svg" alt="SEDCO Logo" class="mx-auto w-24 h-24 mb-6">
            <h1 class="text-2xl font-bold text-gray-800 mb-4">QR Code Not Found</h1>
            <p class="text-gray-600 mb-4">Please scan a valid SEDCO staff QR code to view the directory.</p>
            <div class="border-t pt-4 mt-4">
                <p class="text-sm text-gray-500">Need help? Contact MIS Department</p>
            </div>
        </div>
    </div>
    <?php else: ?>
    <!-- User Profile -->
    <div class="max-w-2xl mx-auto p-4">
        <!-- Header Banner -->
        <div class="glass-effect fixed top-0 left-0 right-0 p-3 text-center shadow-sm">
            <a href="https://www.sedco.com.my/" target="_blank" 
               class="text-sm text-gray-600 hover:text-gray-800 transition">
                Powered by Perbadanan Pembangunan Ekonomi Sabah × MIS Team
            </a>
        </div>

        <!-- Profile Card -->
        <div class="glass-effect rounded-xl shadow-lg mt-16 overflow-hidden animate-fadeIn">
            <!-- Cover Image -->
            <div class="relative h-48 bg-gradient-to-r from-blue-500 to-purple-600">
                <img src="./img/bg.png" alt="Cover" class="w-full h-full object-cover opacity-80">
                <div class="gradient-overlay absolute inset-0"></div>
                
                <!-- Profile Image -->
                <div class="absolute -bottom-16 left-1/2 transform -translate-x-1/2">
                    <img src="<?= $profile->getValue('imageUrl') ?>" 
                         alt="Profile" 
                         class="w-32 h-32 rounded-full border-4 border-white shadow-lg">
                </div>
            </div>

            <!-- Profile Info -->
            <div class="pt-20 pb-8 px-6 text-center">
                <h1 class="text-2xl font-bold text-gray-800">
                    <?= $profile->getValue('full_name') ?>
                </h1>
                <p class="text-gray-600 mt-1"><?= $profile->getValue('job_title') ?></p>
                <p class="text-gray-500 text-sm"><?= $profile->getValue('department') ?></p>
            </div>

            <!-- Contact Buttons -->
            <div class="grid grid-cols-2 md:grid-cols-4 gap-4 p-6 bg-white/50">
                <a href="tel:<?= $profile->getValue('phone') ?>" 
                   class="flex flex-col items-center p-3 hover:bg-white/50 rounded-lg transition">
                    <img src="./img/phone.png" alt="Phone" class="w-12 h-12 mb-2">
                    <span class="text-sm text-gray-600">Phone</span>
                </a>
                
                <a href="https://wa.me/<?= $profile->getValue('phone') ?>" 
                   class="flex flex-col items-center p-3 hover:bg-white/50 rounded-lg transition">
                    <img src="./img/whatsapp.png" alt="WhatsApp" class="w-12 h-12 mb-2">
                    <span class="text-sm text-gray-600">WhatsApp</span>
                </a>

                <a href="mailto:<?= $profile->getValue('email') ?>" 
                   class="flex flex-col items-center p-3 hover:bg-white/50 rounded-lg transition">
                    <img src="./img/mail.png" alt="Email" class="w-12 h-12 mb-2">
                    <span class="text-sm text-gray-600">Email</span>
                </a>

                <a href="tel:+6088266777" 
                   class="flex flex-col items-center p-3 hover:bg-white/50 rounded-lg transition">
                    <img src="./img/officephone.png" alt="Office" class="w-12 h-12 mb-2">
                    <span class="text-sm text-gray-600">Office</span>
                </a>
            </div>

            <!-- Additional Links -->
            <div class="grid grid-cols-3 gap-4 p-6 border-t border-white/20">
                <a href="https://www.sedco.com.my/" 
                   class="flex flex-col items-center p-3 hover:bg-white/50 rounded-lg transition">
                    <img src="./img/web.png" alt="Website" class="w-12 h-12 mb-2">
                    <span class="text-sm text-gray-600">Website</span>
                </a>

                <a href="https://www.facebook.com/SEDCOsabah" 
                   class="flex flex-col items-center p-3 hover:bg-white/50 rounded-lg transition">
                    <img src="./img/facebook.png" alt="Facebook" class="w-12 h-12 mb-2">
                    <span class="text-sm text-gray-600">Facebook</span>
                </a>

                <a href="https://ul.waze.com/ul?place=ChIJAU_xBpVpOzIRXwNcHDpnmEI&ll=5.97392040%2C116.06770880&navigate=yes" 
                   class="flex flex-col items-center p-3 hover:bg-white/50 rounded-lg transition">
                    <img src="./img/location1.png" alt="Location" class="w-12 h-12 mb-2">
                    <span class="text-sm text-gray-600">Location</span>
                </a>
            </div>
        </div>

        <!-- Footer -->
        <footer class="text-center mt-8 mb-4">
            <p class="text-sm text-gray-600">
                © <?= date('Y') ?> Perbadanan Pembangunan Ekonomi Sabah (SEDCO)
            </p>
        </footer>
    </div>
    <?php endif; ?>
</body>
</html>