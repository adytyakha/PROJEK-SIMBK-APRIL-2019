<?php
error_reporting(0);
session_start();



if(!isset($dbh)){
    date_default_timezone_set("GMT+7");

 $musername = "id9653960_simbkup";
 $mpassword = "12345";
 $hostname  = "localhost";
 $dbname    = "id9653960_simbkup";
 $dbh=new PDO('mysql:dbname='.$dbname.';host='.$hostname.";port=3306",$musername, $mpassword);
 /*Change The Credentials to connect to database.*/
 include("user_online.php");
}
?>