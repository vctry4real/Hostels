<?php
// Connect to database
$conn = new mysqli("localhost", "root", "", "hostel");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get selected block name from AJAX request
$block = $_GET['block'];

// Prepare and execute query to get all rooms for selected block
$stmt = $conn->prepare("SELECT room_no FROM $block");
$stmt->execute();
$result = $stmt->get_result();

// Build array of rooms
$rooms = array();
while ($row = $result->fetch_assoc()) {
    $rooms[] = $row['room_no'];
}

// Return JSON response with rooms
header('Content-Type: application/json');
echo json_encode($rooms);

// Close database connection
$stmt->close();
$conn->close();
?>
