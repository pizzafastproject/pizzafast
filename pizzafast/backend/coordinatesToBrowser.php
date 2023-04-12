<?php

require_once 'connect.php';

 if (!$conn) {
     exit;
 }
 else{}
    
 $sql = mysqli_query($conn, "SELECT * FROM coordinates");

 if ($sql) {
    $row = $sql->fetch_assoc();
    $lat=$row['latitude'];
    $lon=$row['longitude'];
  
    $cart = array(
      "latitude" => $lat,
      "longitude" => $lon,
   );
 
   echo json_encode( $cart );
    
   } else {
   }
?>