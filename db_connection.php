<?php
    function OpenCon() {
        $hostname = "us-cdbr-east-02.cleardb.com";
        $username = "b1803411cca828";
        $password = "e4e7a521";
        $db = "heroku_bd0c3e1ca9c323d";
        $conn = new mysqli($hostname, $username, $password,$db) or die("Connect failed: %s\n". mysqli_connect_error());
        
        return $conn;
    }
    
    function CloseCon($conn) {
        $conn -> close();
    }
