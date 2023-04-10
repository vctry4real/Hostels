<?php
    // Connect to the database
    $servername = "localhost";    
    $username = "root";
    $password = "";
    $dbname = "hostel";

    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    
    // Get the id from the URL
    $id = $_GET['id'];
    
    // Retrieve data from the request table
    $sql = "SELECT * FROM request WHERE id = $id";
    $result = $conn->query($sql);

    // Insert the retrieved data into the registration table
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $firstname = $row['firstname'];
            $lastname = $row['lastname'];
            $emailid = $row['email'];
            $bedspace = $row['bedspace'];
            $middlename = $row['middlename'];
            $stayfrom = $row['stayfrom'];
            $duration = $row['duration'];
            $course = $row['course'];
            $regno = $row['regno'];
            $roomno = $row['roomno'];
            $gender = $row['gender'];
            $contactno = $row['contactno'];
            $emcntno = $row['egycontactno'];
            $gurname = $row['guardianName'];
            $gurrelation = $row['guardianRelation'];
            $gurcntno = $row['guardianContactno'];
            $caddress = $row['corresAdress'];
            $ccity = $row['corresCity'];
            $cstate = $row['corresState'];
            $paddress = $row['pmntAddress'];
            $pcity = $row['pmntCity'];
            $pstate = $row['pmnatetState'];
            $feespm = $row['feespm'];
        }

        // Insert data into the registration table
        $sql = "INSERT INTO registration (firstName, lastName, emailid, seater, feespm, middleName, stayfrom, duration, course, regno, roomno, gender, contactno, egycontactno, guardianName, guardianRelation, guardianContactno, corresAddress, corresCIty, corresState, pmntAddress, pmntCity, pmnatetState) VALUES ('$firstname','$lastname','$emailid','$bedspace', '$feespm','$middlename','$stayfrom','$duration','$course','$regno','$roomno','$gender','$contactno','$emcntno','$gurname','$gurrelation','$gurcntno','$caddress','$ccity','$cstate','$paddress','$pcity','$pstate')";

        if ($conn->query($sql) === TRUE) {
            echo "Accepted successfully";
        } else {
            echo "Error inserting record: " . $conn->error;
        }

        // Delete data from the request table
        $sql = "DELETE FROM `request` WHERE `id` = $id";

        if ($conn->query($sql) === TRUE) {
            echo "";
        } else {
            echo "Error deleting record: " . $conn->error;
        }
    }
        // Close the database connection
        $conn->close();
?>

<br/><br/>
<a href="dashboard.php">Back</a>