<?php

include 'setting.php';

//$user = $_SESSION["user"]; 
?>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Durauto</title>
        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="style.css">
                <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

        <style>           
            @import url('https://fonts.googleapis.com/css?family=Open+Sans:300,400,700');
            body{
                font-family: 'Open Sans', serif;
            }
            h1{
                color: dimgray;
                font-weight: 300;
                margin: 20px 0;
                padding-bottom: 7px;
                font-size: 40px;
                line-height: 40px;
                /* display: inline; */
                text-align: center;
            }    

        </style> 
    </head>
    <body class="body1" id="page-top">
       
        <?php include ("nav.php"); ?>
        <div class="container"></div>
        <!--                        <div class="divlogo">
            
                                </div>
                                <h1 class="col-xl-7 col-sm-6 mb-5" style="color: white; margin-left:5%; margin-right: 5%; padding:30px; border:solid 4px; border-style:ridge;"> </h1>
                                 
        <?php
        if (!isset($_SESSION["loggedin"])) {
            ?>
                                                <a href="mi-cuenta.php"><input type="button" value="Mi cuenta" class="logout2"/></a>
            <?php
        } else {
            ?>
                                                <span type="text" value="Mi cuenta" class="logout2">Bienvenido <?php echo $_SESSION['email'] ?></span>
                                                
            <?php
        }
        ?>
                                
                                <a href="Logout.php"><input type="button" value="Logout" class="logout"/></a>
        -->
        <div class="container">
            <div style="padding-top:50px;" class="row">
                
                    <div class="col-md-6">
                        <a href="segundamano.php">
                        <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                            <div class="flipper">
                                <div class="front">
                                    <span class="name">Coches km 0</span>
                                </div>
                                <div class="back">
                                    <div class="back-logo"></div>
                                    <div class="back-title">Encuentra tu coche nuevo al mejor precio.<br> Haz click</div>
                                    <p></p>
                                </div>
                            </div>
                        </div>
                         </a>
<a href=""><i style="font-size: 15em;" class="fa fa-github fa-6" aria-hidden="true"></i><h2> Github Link</h2></a>
                <!-- </a> -->
                    </div>
                   <!--   </a> -->

                   <!--  <a href=""><i style="font-size: 15em;" class="fa fa-github fa-6" aria-hidden="true"></i><h2> Github Link</h2></a> -->
                <!-- </a> -->
               <!--  <div class="col-md-3">
                <a href=""><i style="font-size: 15em;" class="fa fa-github fa-6" aria-hidden="true"></i><h2> Github Link</h2></a>

             </div> -->
           
                 <div class="col-md-5">
                <a class="twitter-timeline" data-height="854" href="https://twitter.com/diariomotor?ref_src=twsrc%5Etfw">Tweets by diariomotor</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

            </div>
             <!-- <div class="col-md-2">
                <a href=""><i style="font-size: 15em;" class="fa fa-github fa-6" aria-hidden="true"></i><h2> Enlace a github para ver el código</h2></a>

             </div> -->
           
            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fa fa-angle-up"></i>
            </a>

        </div>
    </div>
    <footer class="sticky-footer" style="margin-left:100px; margin-right: 100px;">
                <div class="container">
                    <div class="text-center">
                        <small>Copyright © Durauto 2018</small>
                    </div>
                </div>
            </footer>

    </body>

</html>

<?php
//} else {
//    
?>
<!--                    <br><br><br><br>

                    <h2>No has sido logueado, si quiere volver a intentarlo pulse //<?php echo '<a href="login.php">aquí</a>' ?></h2>-->
<?php
//}
?>