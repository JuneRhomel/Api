<?php
include_once('connection.php');


$fullname = $_POST['fullname'];
$email = $_POST['email'];
$number = $_POST['number'];
$adults = $_POST['adults'];
$children = $_POST['children'];
$checkIn = $_POST['checkIn'];
$checkOut = $_POST['checkOut'];

$sql = "INSERT INTO `booking _info`(`fullname`, `email`, `number`, `adults`, `children`, `checkIn`, `checkOut`) VALUES ('$fullname ','$email ','$number','$adults','$children','$checkIn','$checkOut')";
$res = mysqli_query($conn, $sql);

if($res){
    echo "Success!";
} else {
    echo "Error";
}






