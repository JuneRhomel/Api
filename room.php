<?php
include_once('connection.php');

$sql = "SELECT *  FROM `room_info` ";
$amenites = "SELECT * FROM `amenites_table`";
$data_amenites = mysqli_query($conn, $amenites);
$result = mysqli_query($conn, $sql);

// get the data from the database
if (mysqli_num_rows($data_amenites) > 0) {
    // output data of each row
    while ($row = mysqli_fetch_assoc($data_amenites)) {
        $item[] = $row;
    }
} else {
    $data = array();
}

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while ($row = mysqli_fetch_assoc($result)) {
        $row["amenites"] = $item;
        $data[] = $row;
    }
} else {
    $data = array();
}



// to read the data as a JSON
header('Content-Type: application/json');
// to fromat it to a JSON data

echo json_encode($data);
// echo $data;
