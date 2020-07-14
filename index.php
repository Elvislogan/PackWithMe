<?php
  include 'db_connection.php';
  $conn = OpenCon();
  if (isset($_POST['email'])) {
    $email = $_POST['email'];
    echo $email;
  }

    
  echo "Connected Successfully";
  CloseCon($conn);
?>