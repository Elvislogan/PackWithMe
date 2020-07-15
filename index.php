<?php
  include 'db_connection.php';
  $conn = OpenCon();
  $emails = $_POST['user_emails'];
  
  $sql = "INSERT INTO `email` (`email`) VALUES ('$emails')";

  if (!mysqli_query($conn, $sql)) {
    echo "Not Inserted";
  } else {
    echo "Thank you for subscribing. You will be notified soon";
  }
 
  header("refresh:2; url=index.html");
  CloseCon($conn);
?>
