<?php   
session_start();
session_destroy(); //destroy the session
//   header('Location: ' . $_SERVER['HTTP_REFERER']);
header('Location: index.php');
   exit;
?>