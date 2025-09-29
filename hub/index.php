<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page | Staff Database</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body class="bg-gradient-to-r from-blue-500 to-purple-500 flex flex-col items-center justify-center h-screen">
    <div class="bg-white shadow-lg rounded-xl p-10 max-w-md w-full text-center">
        <div class="flex justify-center mb-6">
            <i class="fas fa-database text-blue-500 text-6xl"></i>
        </div>
        <h2 class="text-3xl font-bold text-gray-800 mb-2">DI | System </h2>
        <p class="text-sm text-gray-500 mb-8">Database Information System</p>
        <button 
            id="loginButton" 
            class="w-full bg-gradient-to-r from-blue-500 to-purple-500 hover:from-purple-600 hover:to-blue-600 text-white font-semibold py-2 px-4 rounded-lg transition duration-300 shadow-md"
        >
            Sign In
        </button>
    </div>
    <footer class="mt-4 py-4 text-center text-sm text-white w-full">
        &copy; <?php echo date("Y"); ?>
        Perbadanan Pembangunan Ekonomi Sabah (SEDCO).<br>
        All Rights Reserved.<br>
        MIS Team x PG Mohd Azhan Fikri
    </footer>

    <!-- Modal -->
    <div id="loginModal" class="hidden fixed inset-0 flex items-center justify-center transition-opacity duration-500 ease-in-out">
        <div class="absolute inset-0 bg-black bg-opacity-70 opacity-0 transition-opacity duration-500" id="modalOverlay"></div>
        <div class="bg-white shadow-xl rounded-lg p-6 max-w-sm w-full transform scale-95 opacity-0 transition-all duration-500 ease-in-out" id="modalContent">
            <div class="flex justify-between items-center mb-4">
                <h2 class="text-lg font-bold text-gray-900">Welcome back</h2>
                <button id="closeModal" class="text-gray-400 hover:text-gray-600 transition duration-300 transform hover:scale-110">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <p class="text-sm text-gray-500 mb-6">Sign in to access the SEDCO Admin Dashboard</p>
            <form action="login.php" method="POST">
                <div class="mb-4">
                    <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
                    <div class="relative">
                        <i class="fas fa-envelope text-gray-400 absolute left-3 top-3"></i>
                        <input 
                            type="email" 
                            id="email" 
                            name="email" 
                            required
                            class="block w-full pl-10 px-4 py-2 border border-gray-300 rounded-md focus:ring-blue-500 focus:border-blue-500"
                            placeholder="Enter your email"
                        >
                    </div>
                </div>
                <div class="mb-4">
                    <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                    <div class="relative">
                        <i class="fas fa-lock text-gray-400 absolute left-3 top-3"></i>
                        <input 
                            type="password" 
                            id="password" 
                            name="password" 
                            required
                            class="block w-full pl-10 px-4 py-2 border border-gray-300 rounded-md focus:ring-blue-500 focus:border-blue-500"
                            placeholder="Enter your password"
                        >
                    </div>
                </div>
                <div class="flex items-center justify-between mb-6">
                    <label class="flex items-center text-sm text-gray-600">
                        <input type="checkbox" class="form-checkbox mr-2">
                        Remember me
                    </label>
                    <a href="#" id="forgotPassword" class="text-sm text-blue-500 hover:underline">Forgot password?</a>
                </div>
                <button 
                    type="submit"
                    class="w-full bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded-md transition duration-300"
                >
                    Sign In
                </button>
            </form>
        </div>
    </div>

    <!-- Password Reset Notification -->
    <div id="passwordResetNotification" class="hidden fixed bottom-4 right-4 bg-white shadow-lg rounded-lg p-4 w-80 border border-gray-200 opacity-0 transform translate-y-4 transition-all duration-500">
        <div class="flex justify-between items-center mb-2">
            <h3 class="text-sm font-bold text-gray-700">Password Reset</h3>
            <button id="closeNotification" class="text-gray-400 hover:text-gray-600 transition duration-300 transform hover:scale-110">
                <i class="fas fa-times"></i>
            </button>
        </div>
        <p class="text-sm text-gray-600">Please contact your system administrator to reset your password.</p>
    </div>

    <script>
        const loginButton = document.getElementById('loginButton');
        const loginModal = document.getElementById('loginModal');
        const modalOverlay = document.getElementById('modalOverlay');
        const modalContent = document.getElementById('modalContent');
        const closeModal = document.getElementById('closeModal');
        const forgotPassword = document.getElementById('forgotPassword');
        const passwordResetNotification = document.getElementById('passwordResetNotification');
        const closeNotification = document.getElementById('closeNotification');

        loginButton.addEventListener('click', () => {
            loginModal.classList.remove('hidden');
            setTimeout(() => {
                modalOverlay.classList.add('opacity-100');
                modalContent.classList.remove('scale-95', 'opacity-0');
            }, 10);
        });

        closeModal.addEventListener('click', () => {
            modalContent.classList.add('scale-95', 'opacity-0');
            modalOverlay.classList.remove('opacity-100');
            setTimeout(() => {
                loginModal.classList.add('hidden');
            }, 500);
        });

        forgotPassword.addEventListener('click', () => {
            passwordResetNotification.classList.remove('hidden');
            setTimeout(() => {
                passwordResetNotification.classList.add('opacity-100', 'translate-y-0');
            }, 10);
        });

        closeNotification.addEventListener('click', () => {
            passwordResetNotification.classList.remove('opacity-100', 'translate-y-0');
            setTimeout(() => {
                passwordResetNotification.classList.add('hidden');
            }, 500);
        });
    </script>
</body>
</html>
