<?php
include_once('connection.php');

$id = $_POST['id'];

$sql = "DELETE FROM `booking _info` WHERE id = $id";
if ($conn->query($sql) === TRUE) {
    echo "Record deleted successfully";
} else {
    echo "Error deleting record: " . $conn->error;
}
$conn->close();