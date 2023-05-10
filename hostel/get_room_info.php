<?php
// retrieve the selected room from the query string parameter
$selectedRoom = $_GET["room"];

// connect to the database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "hostel";
$conn = new mysqli($servername, $username, $password, $dbname);

// check for errors in database connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// execute query to retrieve room info
$sql = "SELECT beds, rent FROM rooms WHERE room_number = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $selectedRoom);
$stmt->execute();
$result = $stmt->get_result();

// check for errors in query execution
if (!$result) {
    die("Query failed: " . $conn->error);
}

// retrieve room info from query result
$row = $result->fetch_assoc();
$beds = $row["beds"];
$rent = $row["rent"];

// create response object
$response = array(
    "beds" => $beds,
    "rent" => $rent
);

// encode object as JSON and send response
echo json_encode($response);

// close database connection
$conn->close();
?>
