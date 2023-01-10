<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type");

$host = "localhost";
$user = "root";
$password = "Gray27june";
$dbname = "hotel_booking";


// Create connection

$conn = new mysqli($host, $user, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$queary = "SELECT t1.field1, t1.field2, t2.field3 FROM table1 AS t1 INNER JOIN table2 AS t2 ON t1.foreign_key_field = t2.id";

$query = "SELECT * FROM `room_info`AS t1  ";