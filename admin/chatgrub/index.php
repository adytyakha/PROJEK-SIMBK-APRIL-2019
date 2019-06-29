<?php
session_start();

?>
<!DOCTYPE html>
<html>
 <head>
<title>Chat Grub</title>




  <script src="jquery.min.js"></script>
  <script src="chat.js"></script>
  <link href="chat.css" rel="stylesheet"/>
 </head>
 <body>
	<div id="konten">

	<div class="tabs"><div class="tab" data-dip="chat">CHATS</div><a href="../index.php"  class="btn btn-default btn-flat">Keluar</a></div>
   <div class="chat">
     <?php 

	 include("config.php");include("login.php");

     if(isset($_SESSION['user'])){
      include("chatbox.php");
     }else{
      $display_case=true;
      include("login.php");
     }
     ?>
   </div>
   <div class="users" style='display:none'>
     <?php include("../index.php");?>
    </div>
	</div>



 </body>
</html>
