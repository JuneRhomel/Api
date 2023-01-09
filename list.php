<?php
include_once('connection.php');

$sql = "SELECT * FROM `guest_info` ";
$result = mysqli_query($conn, $sql);

// get the data from the database
if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
        $data[] = $row;
    }
} else {
    $data = array();
}

// to read the data as a JSON
header('Content-Type: application/json');
// to fromat it to a JSON data
echo json_encode($data);