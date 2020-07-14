<?php
    function OpenCon() {
        $hostname = "e11wl4mksauxgu1w.cbetxkdyhwsb.us-east-1.rds.amazonaws.com";
        $username = "ff19744gqchk0ibi";
        $password = "gfx8u9myq8gny12c";
        $db = "qx4l5y21dx6r6ji5";
        $conn = new mysqli($hostname, $username, $password,$db) or die("Connect failed: %s\n". mysqli_connect_error());
        
        return $conn;
    }
    
    function CloseCon($conn) {
        $conn -> close();
    }
    
