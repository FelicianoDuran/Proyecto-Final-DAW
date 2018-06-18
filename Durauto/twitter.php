<?php
include 'setting.php';
include 'TwitterAPIExchange.php';
$settings = array(
    'oauth_access_token' => "2203818342-umXda5SJJ1RWLRLz4XuucXcBH8dijOY2ZlxIHG9",
    'oauth_access_token_secret' => "wfvHKxvfVqZvBXUmL2y1rhnihyfitSEeu6MFRGgg96vBO",
    'consumer_key' => "NweJB2zLGog9zeqsmjJHz32sh",
    'consumer_secret' => "BBid9IngYKq5QeRajssykFvwVLZSIj6PQsEH8uoD2Xk7txj08I"
);

$url = 'https://api.twitter.com/1.1/statuses/user_timeline.json';
$getfield = '?screen_name=cochesnet&count=1';
$requestMethod = 'GET';

$twitter = new TwitterAPIExchange($settings);
echo $twitter->setGetfield($getfield)
    ->buildOauth($url, $requestMethod)
    ->performRequest();

?> 


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>SB Admin - Start Bootstrap Template</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

  
 
</head>

<body>
  <?php

  $tweets = json_decode($twitter, true);
  foreach ($tweets as $tweet) {
    echo $tweet['text'];
  }
  

  ?>
</body>


</html>
