<?php 
    include('functions.php');
    $id = $_GET['id'];
    $query ="DELETE FROM `request` WHERE `request`.`id`= '$id';";
        
            if(performQuery($query)){
                echo "You have successfully, declined booking request";
            }else{
                echo "unknown error occured. Pease try again later";
            }

            
?>

<br/><br/>
<a href="dashboard.php">Back</a>