<table border=1>
<tr>
    <td>reg nummurs</td>
    <td>marka</td>
    <td>modelis</td>
    <td>svars</td>
  </tr>
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
   
$sql = "SELECT reg,marka,modelis,svars FROM save";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
?>
<tr>
    <td><?php echo $row["reg"]?></td>
    <td><?php echo $row["marka"]?></td>
    <td><?php echo $row["modelis"]?></td>
    <td><?php echo $row["svars"]?></td>
</tr>
<?php
}
} else {
  echo "0 results";
}
$conn->close();
?>
</table>