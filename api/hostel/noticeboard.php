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


// Query to select all messages from the database
$sql = "SELECT message FROM messages ORDER BY id DESC";
$result = $conn->query($sql);

// Check if there are any messages
if ($result->num_rows > 0) {
    // If there are messages, display each one in a list
    echo '<html>';
    echo '<head>';
    echo '<title>Hostel Notice Board</title>';
    echo '<style>
        /* CSS styling for the message list */
        .message-list {
            margin-top: 10px;
            list-style-type: none;
            padding: 0;
        }
        
        .message-list li {
            background-color: #f2f2f2;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 10px;
        }
        
        .message-list li h2 {
            font-size: 18px;
            margin-top: 0;
        }

        .header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px;
        }
    </style>';
    echo '</head>';
    echo '<body>';
    echo '<div class="header">';
    echo '<h1>Hostel Notice Board</h1>';
    echo '</div>';
    echo '<ul class="message-list">';
    // Loop through each message and display it in a list item
    while($row = $result->fetch_assoc()) {
        echo '<li><h2>Admin Message:</h2><p>'.$row['message'].'</p></li>';
    }
    echo '</ul>';
    echo '</body>';
    echo '</html>';
} else {
    // If there are no messages, display a message to the user
    echo 'No messages found.';
}

echo '<br/><br/>
<a href="dashboard.php">Back</a>';
$conn->close();
?>


