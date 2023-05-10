<?php
// Connect to database
$conn = new mysqli("localhost", "root", "", "hostel");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get selected hostel name and room number from AJAX request
$hostel = $_GET['block'];
$room = $_GET['room'];

// Prepare and execute query to get bed space for selected hostel and room
$stmt = $conn->prepare("SELECT seater, fees FROM $hostel WHERE room_no = ?");
$stmt->bind_param("s", $room);
$stmt->execute();
$result = $stmt->get_result();

// Fetch the row and store the values in an array
$row = $result->fetch_assoc();
$bed_space = array('seater' => $row['seater'], 'fee' => $row['fees']);

// Return JSON response with bed space
echo json_encode($bed_space);

// Close database connection
$stmt->close();
$conn->close();
?>
