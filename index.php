<?php
// This script has been updated to PHP Vanilla
// Any problem will make the backup on
// https://github.com/HarryDotMYx/intranet-sedco-system
// Thank you :))

require_once './assets/header.php';
// Include database configuration file
require_once './assets/db_config.php';

// Function to sanitize and validate data
function cleanInput($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

// Get user ID from the URL
$userID = (isset($_GET['user'])) ? $_GET['user'] : 0; // Set a default value if no user ID is provided

// Sanitize user input
$userID = cleanInput($userID);

// Use prepared statements to prevent SQL injection
$sql = "SELECT * FROM users WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $userID);
$stmt->execute();
// Error handling for database connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Error handling for SQL execution
if (!$stmt->execute()) {
    die("Execute failed: " . $stmt->error);
}

$result = $stmt->get_result();

if ($result->num_rows > 0) {
    // If user information is found
    $row = $result->fetch_assoc();

    // Assign values from the database to variables
    $fullName = cleanInput($row['full_name']);
    $jobTitle = cleanInput($row['job_title']);
    $department = cleanInput($row['department']);
    $phone = cleanInput($row['phone']);
    $email = cleanInput($row['email']);
    $imageUrl = cleanInput($row['imageUrl']);
    // ... Other variables

    // Close the prepared statement
    $stmt->close();
    // Close the database connection
    $conn->close();
} else {
    // If the user ID does not exist
    echo <<<HTML
    

  <title>SEDCO Staff ID - Home Page </title>
  <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <style type="text/css">
    body {
     font-family: Arial, Helvetica, Verdana, Sans-Serif;
     font-size: small;
     font-weight: normal;
     color: #000000;
   }
   div {
     margin-left: auto;
     margin-right: auto;
     text-align: center;
   }
   .box {
     width: 601px;
     background-color: #F2F2F2;
     border-left: solid 1px #C2C2C2;
     border-right: solid 1px #C2C2C2;
    vertical-align: middle;
    padding: 20px 10px 20px 10px;
  }
  p {
    text-align: left;
  }
  .red {
    font-weight: bold;
    color: Red;
    text-align: center;
  }
  .band {
    height: 20px;
    color: White;
    background: #333333;
    width: 600px;
    border-left: solid 1px #333333;
     border-right: solid 1px #333333;
     padding: 3px 10px 0px 10px;
   }
   div#wrap {
     margin-top: 50px;
   }
  </style>
</head>

<br><br><br><br><br><br><br><br><br><br><br>
  <div class="container">
    <div class="band">QR-Code Undetected.</div>
    <div class="box">
   <center> <img src="./img/logosedco.svg" width="100" height="100"> </center>
      <p class="text-center font-bold">Reason: NO QR Detected</p>
      <hr class="my-4">
      <p class="text-center">Please Scan The QR or Try again</p>
      <p class="text-center">Please contact MIS Department for assistance.</p>
    </div>
    <div class="band">SEDCO x MIS</div>
  </div>
</body>
</html>



HTML;

    // Close the prepared statement
    $stmt->close();
    // Close the database connection
    $conn->close();
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SEDCO - <?php echo $fullName; ?></title>
  
</head>
<body class="background_clean layout_1">
    <style>
        .profileImage .faceBox.halfUp {
            margin-top: calc(var(--profileImageSize) / 2 * -1 - 12px);
        }
    </style>
    
    <div id="Banner" class="w-100 p-2 d-flex align-items-center justify-content-center">
        <a rel="nofollow" class="poweredBy" href="https://www.sedco.com.my/" target="_blank">Perbadanan Pembangunan Ekonomi Sabah</a>
    </div>
    
    <div class="layoutContainer shadowWithRadiusAll container-fluid g-0 profileImage">
        <div class="row g-0">
            <div class="col-sm">
                <div class="cover-image">
                    <div class="coverBox">
                        <img id="cE_mainImage" class="shadowWithRadiusTop" src="./img/bg.jpg" sizes="(min-width: 1000px) 800px, 100vw">
                    </div>
                    <svg class="shapeBottom" xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 100 100" preserveAspectRatio="none">
                        <!-- Your SVG paths here -->
                    </svg>
                    <div class="faceBox halfUp border-0">
					<img id="cE_smallImage" class="face" src="<?php echo $imageUrl; ?>" >
                    </div>
                </div>
            </div>
            <div class="titlesBlock">
                <div id="cE_title1" class="col-12 mt-3 g-5">
                    <h1 class="h1 text-center cp-text"><?php echo $fullName; ?></h1>
                </div>
                <div id="cE_title2" class="col-12 mt-0 g-5">
                    <h2 class="h4 text-center cp-text"><?php echo $jobTitle; ?></h2>
                </div>
                <div id="cE_title2" class="col-12 mt-0 g-5">
                    <h2 class="h5 text-center cp-text"><?php echo $department; ?></h2>
                </div>
            </div>
            <div class="col-12 mt-4">
                <div class="container-fluid g-0">
                    <div id="cardPages" class="g-0 quickButtons circle" data-amout="8">
					<div class="text-center">
                            <a id="de761b227d6a9" class="button " href="tel:<?php echo $phone; ?>" data-type="phone">
                                <img src=./img/phone.png style="width:60px;height:auto">
                                <div class="title">Phone</div>
                            </a>
                        </div>
                        <div class="text-center">
                            <a id="de761b227d6a9" class="button " href="https://wa.me/<?php echo $phone; ?>" data-type="whatsapp">
                                <img src=./img/whatsapp.png style="width:60px;height:auto" >
                                <div class="title">WhatsApp</div>
                            </a>
                        </div>
                        <div class="text-center">
                            <a id="de761b227d6a9" class="button " href="mailto:<?php echo $email; ?>" data-type="email">
                                <img src=./img/mail.png style="width:60px;height:auto" >
                                <div class="title">E-mail</div>
                            </a>
                        </div>
                        <div class="text-center">
                            <a id="de761b227d6a9" class="button " href="tel:+6088266777" data-type="officephone">
                                <img src=./img/officephone.png style="width:60px;height:auto" >
                                <div class="title">Office Phone</div>
                            </a>
                        </div>
                        <div class="text-center">
                            <a id="de761b227d6a9" class="button " href="https://www.sedco.com.my/v2" data-type="website">
                                <img src=./img/web.png style="width:60px;height:auto" >
                                <div class="title">Website<br>SEDCO</div>
                            </a>
                        </div>
                        <div class="text-center">
                            <a id="de761b227d6a9" class="button " href="https://www.facebook.com/SEDCOsabah" data-type="phone">
                                <img src=./img/facebook.png style="width:60px;height:auto" >
                                <div class="title">Facebook <br>SEDCO </div>
                            </a>
                        </div>
                        <div class="text-center">
                            <a id="de761b227d6a9" class="button " href="https://ul.waze.com/ul?place=ChIJAU_xBpVpOzIRXwNcHDpnmEI&ll=5.97392040%2C116.06770880&navigate=yes&utm_campaign=default&utm_source=waze_website&utm_medium=lm_share_location" data-type="location">
                                <img src=./img/location1.png style="width:60px;height:auto" >
                                <div class="title">SEDCO<br>Location</div>
                            </a>
                        </div>
                        
                    </div>
                </div>
            </div>
                    </div>
                </div>
            </div>
            <div class="col-12 text-center">
                <p style="color: black;">&copy;  Perbadanan Pembangunan Ekonomi Sabah ( SEDCO ) <?php echo date("Y"); ?></p>
            </div>
        </div>
    </div>
</body>
</html>
