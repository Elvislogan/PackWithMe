<?php
    function OpenCon() {
        $hostname = "85.10.205.173:3306";
        $username = "thunder";
        $password = "drakinho1";
        $db = "notify_list";
        $conn = new mysqli($hostname, $username, $password,$db) or die("Connect failed: %s\n". mysqli_connect_error());
        
        return $conn;
    }
    
    function CloseCon($conn) {
        $conn -> close();
    }
