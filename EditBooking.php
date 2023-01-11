<?php

include_once('connection.php');

$id = $_POST['id'];
$fullname = $_POST['fullname'];
$email = $_POST['email'];
$number = $_POST['number'];
$adults = $_POST['adults'];
$children = $_POST['children'];
$checkIn = $_POST['checkIn'];
$checkOut = $_POST['checkOut'];

$sql = "UPDATE `booking _info` SET `fullname`='$fullname',`email`='$email',`number`='$number',`adults`='$adults',`children`='$children',`checkIn`='$checkIn',`checkOut`='$checkOut'  WHERE  `id`=$id";
$res = mysqli_query($conn, $sql);

if($res){
    echo "Success!";
} else {
    echo "Error";
}