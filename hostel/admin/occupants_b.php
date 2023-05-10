<?php
// Connect to database
$conn = new mysqli("localhost", "root", "", "hostel");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare and execute query to retrieve occupants data
$stmt = $conn->prepare("SELECT firstName, lastName, emailid, seater, feespm, middleName, stayfrom, duration, course, level, regno, hostel, roomno, gender, contactno FROM registration WHERE hostel='blockb'");
$stmt->execute();
$result = $stmt->get_result();

// Build array of occupants data
$occupants = array();
while ($row = $result->fetch_assoc()) {
    $occupants[] = $row;
}

// Sort occupants by room number in ascending order
usort($occupants, function($a, $b) {
    return $a['roomno'] <=> $b['roomno'];
});

// Close database connection
$stmt->close();
$conn->close();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Block B Occupants</title>
    <!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<!-- Font Awesome CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
		body {
			background-color: #f2f2f2;
		}
		table {
			border-collapse: collapse;
			width: 100%;
			background-color: #fff;
			box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
			margin: 20px auto;
		}
		th, td {
			padding: 12px;
			text-align: left;
			border-bottom: 1px solid #ddd;
		}
		th {
			background-color: #4CAF50;
			color: white;
		}
		tr:hover {
			background-color: #f5f5f5;
		}
	</style>
</head>
<body>
    <h1>Block B Occupants</h1>
    <table>
        <thead>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Bed space</th>
                <th>Fees per month</th>
                <th>Middle Name</th>
                <th>Resumption</th>
                <th>Duration</th>
                <th>Course</th>
                <th>Level</th>
                <th>Reg. No.</th>
                <th>Hostel</th>
                <th>Room No.</th>
                <th>Gender</th>
                <th>Contact No.</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($occupants as $occupant) : ?>
                <tr>
                    <td><?php echo $occupant['firstName']; ?></td>
                    <td><?php echo $occupant['lastName']; ?></td>
                    <td><?php echo $occupant['emailid']; ?></td>
                    <td><?php echo $occupant['seater']; ?></td>
                    <td><?php echo $occupant['feespm']; ?></td>
                    <td><?php echo $occupant['middleName']; ?></td>
                    <td><?php echo $occupant['stayfrom']; ?></td>
                    <td><?php echo $occupant['duration']; ?></td>
                    <td><?php echo $occupant['course']; ?></td>
                    <td><?php echo $occupant['level']; ?></td>
                    <td><?php echo $occupant['regno']; ?></td>
                    <td><?php echo $occupant['hostel']; ?></td>
                    <td><?php echo $occupant['roomno']; ?></td>
                    <td><?php echo $occupant['gender']; ?></td>
                    <td><?php echo $occupant['contactno']; ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <br/><br/>
    <a href="dashboard.php">Back</a>
</body>
</html>


