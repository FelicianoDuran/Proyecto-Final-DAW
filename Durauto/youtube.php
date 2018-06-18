<?php

$API_key    = 'AIzaSyA3SFvn5TMN_kwd4rS2tAOKvxjBMRzBwlc';
$channelID  = 'UCAMKTtcWpjjeKJnmWytLfZQ';
$maxResults = 3;

$videoList = json_decode(file_get_contents('https://www.googleapis.com/youtube/v3/search?order=date&part=snippet&channelId='.$channelID.'&maxResults='.$maxResults.'&key='.$API_key.''));

?>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
       <title>Autosduran</title>
        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--        <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>-->
        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="style.css">
        <script src="vendor/js/js.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <style>
        	.sidenav {
			    width: 100%;
			    position: absolute;
			    z-index: 1;
			    top: 70px;
			    right: 10px;
			    background: #eee;
			    overflow-x: hidden;
			    padding: 8px 0;
			}
			.youtube-video{
				padding-bottom: 10px;
			}
        </style>
    </head>
<body>
	
<div class="container">
	<div class="col-md-2 sidenav">
		<?php
		foreach($videoList->items as $item){
    //Embed video
    if(isset($item->id->videoId)){
        echo '<div class="youtube-video">
         <p>'. $item->snippet->title .'</p>
                <iframe width="300" height="150" src="https://www.youtube.com/embed/'.$item->id->videoId.'" frameborder="0" allowfullscreen></iframe>
               
            </div>';
    }
}
?>
	</div>

</div>


</body>
</html>