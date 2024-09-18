<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "15_02_2024_projekt";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
   if(isset($_POST)){
      $data = file_get_contents("php://input");
      $car = json_decode($data, true);
      
   }
   
$sql = "INSERT INTO save (reg, marka, modelis, svars)
VALUES ('".$_GET["regNumberadd"]."', '".$_GET["markadd"]."', '".$_GET["modeladd"]."','".$_GET["weightadd"]."')";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();