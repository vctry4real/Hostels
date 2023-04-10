<?php
// Connect to MySQL database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "hostel";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the form has been submitted
if(isset($_POST['message'])){
  // Get the message from the form
  $message = $_POST['message'];
  
  // Save the message to the database
  $sql = "INSERT INTO messages (message) VALUES ('$message')";
  $result = $conn->query($sql);
}

// End of Code to establish a database connection

echo '<html>';
echo '<head>';
echo '<title>Hostel Notice Board</title>';
echo '<style>
        /* CSS styling for the header */
        .header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px;
        }
        
        /* CSS styling for the form */
        form {
            max-width: 600px;
            margin: 0 auto;
        }
        
        form textarea {
            width: 100%;
            height: 150px;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
        }
        
        form input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }
        
        form input[type="submit"]:hover {
            background-color: #555;
        }
    </style>';
echo '</head>';
echo '<body>';
echo '<div class="header">';
echo '<h1>Send a notice</h1>';
echo '</div>';
echo '<form method="POST">';
echo '<textarea name="message"></textarea>';
echo '<input type="submit" name="submit" value="Send">';
echo '</form>';
echo '</body>';
echo '</html>';


// Code to close the database connection at the bottom

$conn->close();
?>

<br/><br/>
<a href="dashboard.php">Back</a>




