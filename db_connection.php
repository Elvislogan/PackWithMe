<?php
    function OpenCon() {
        $hostname = "127.0.0.1";
        $username = "root";
        $password = "";
        $db = "notification";
        $conn = new mysqli($hostname, $username, $password,$db) or die("Connect failed: %s\n". mysqli_connect_error());
        
        return $conn;
    }
    
    function CloseCon($conn) {
        $conn -> close();
    }
