<?php
  include 'db_connection.php';
  $conn = OpenCon();


  $emails = $_POST['email'];
  
  $sql = "INSERT INTO `notify` (`email`) VALUES ('$emails')";

  if (!mysqli_query($conn, $sql)) {
    echo "Not Inserted";
  } else {
    echo "Thank you for subscribing. You will be notified soon";
  }
 
  
  CloseCon($conn);
?>
