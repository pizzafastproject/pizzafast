<?php
 require_once 'connect.php';

 $Latitude=30.3141;
 $Longitude=59.9386;

 if (!$conn) {
  exit;
 }
 else{
     if (!empty($_POST["Latitude"]&&!empty($_POST["Longitude"]))){
     $Latitude=$_POST["Latitude"];
     $Longitude=$_POST["Longitude"];
    }
    
  $sql = mysqli_query($conn, "UPDATE coordinates SET latitude='$Latitude', longitude='$Longitude' WHERE id='1'");

  if ($sql) {
   } else {
    }
  }
?>