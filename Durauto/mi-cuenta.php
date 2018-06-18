<?php
include 'setting.php';

//if (($_SESSION["loggedin"]) == true) {
?> 
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Autosduran </title>
        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="style.css">

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


            .logout {
                background:url('https://dh3vbjnk0bnfa.cloudfront.net/static/centralauth/images/btn-login-hover.png') no-repeat 5px 5px #484B4F;
                width: 125px;
                cursor:pointer;
                border-radius:50px;
                padding:10px 20px 10px 0;
                color:White;
                font-size:14px;
                text-align:left;
                text-indent:40px;
                display:block;
                margin:0 auto;

                /* Animations: */
                -webkit-transition-timing-function: ease-in-out;
                -webkit-transition-duration: .4s;
                -webkit-transition-property: all;

                -moz-transition-timing-function: ease-in-out;
                -moz-transition-duration: .4s;
                -moz-transition-property: all;
            }

            .logout:hover {
                background-image: url( 'https://dh3vbjnk0bnfa.cloudfront.net/static/centralauth/images/btn-login.png' );
                background-position: 65px 5px;
                text-indent: 15px;  
            }

            .logout2 {
                background:url('https://dh3vbjnk0bnfa.cloudfront.net/static/centralauth/images/btn-login-hover.png') no-repeat 5px 5px #484B4F;
                width: 125px;
                cursor:pointer;
                border-radius:50px;
                padding:10px 20px 10px 0;
                color:White;
                font-size:14px;
                text-align:left;
                text-indent:40px;
                display:block;
                margin:0 auto;

                /* Animations: */
                -webkit-transition-timing-function: ease-in-out;
                -webkit-transition-duration: .4s;
                -webkit-transition-property: all;

                -moz-transition-timing-function: ease-in-out;
                -moz-transition-duration: .4s;
                -moz-transition-property: all;
            }

            .logout2:hover {
                background-image: url( 'https://dh3vbjnk0bnfa.cloudfront.net/static/centralauth/images/btn-login.png' );
                background-position: 85px 5px;
                text-indent: 15px;  
            }

            .warn{
                color:red;
            }
        </style>


    </head>
<!--        <a href="#"><input type="button" value="Mi cuenta" class="logout2"/></a>
    <a href="Logout.php"><input type="button" value="Logout" class="logout"/></a>-->
    <body class="fixed-nav sticky-footer bg-dark body1" id="page-top">
        <!-- Navigation-->

        <div class="content-wrapper" style="margin-left:100px; margin-right: 100px; border: solid 2px; border-style: outset;">
            <div class="container-fluid" style="margin: 0 auto; width: 50%">
<?php include ('nav.php'); ?> 
                <!-- Breadcrumbs-->
                <!--      <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                          <a href="#">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">My Dashboard</li>
                      </ol>-->
                <!-- Icon Cards-->
                <div class="row">   
                    <!--                    <form style="margin:0 auto; width: 50%" class="login100-form validate-form" action="CheckLogin.php" method="post">
                                            <span class="login100-form-title">
                                                Login
                                            </span>
                    
                                            <div class="wrap-input100 validate-input" data-validate="Valid email is required: example@abc.com">
                                                <input class="input100" type="text" name="email" placeholder="Email">
                                                <span class="focus-input100"></span>
                                                <span class="symbol-input100">
                                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                                </span>
                                            </div>
                    
                                            <div class="wrap-input100 validate-input" data-validate = "Password is required">
                                                <input class="input100" type="password" name="password" placeholder="Password">
                                                <span class="focus-input100"></span>
                                                <span class="symbol-input100">
                                                    <i class="fa fa-lock" aria-hidden="true"></i>
                                                </span>
                                            </div>
                    
                                            <div class="container-login100-form-btn">
                                                <button class="login100-form-btn">
                                                    Login
                                                </button>
                                            </div>
                    
                                                                                    <div class="text-center p-t-12">
                                                                                            <span class="txt1">
                                                                                                    Forgot
                                                                                            </span>
                                                                                            <a class="txt2" href="#">
                                                                                                    Username / Password?
                                                                                            </a>
                                                                                    </div>
                                            
                                                                                    <div class="text-center p-t-136">
                                                                                            <a class="txt2" href="#">
                                                                                                    Create your Account
                                                                                                    <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                                                                                            </a>
                                                                                    </div>
                                        </form>-->


<!--                    <div class="container">
                        <div class="row">
                            <h1 class="text-center">Modal Login with jQuery Effects</h1>
                            <p class="text-center"><a href="#" class="btn btn-primary btn-lg" role="button" data-toggle="modal" data-target="#login-modal">Open Login Modal</a></p>
                        </div>
                    </div>-->
                    <!-- END # BOOTSNIP INFO -->

                    <!-- BEGIN # MODAL LOGIN -->
                    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header" align="center">
                                    <img class="img-circle" id="img_logo" src="http://bootsnipp.com/img/logo.jpg">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                                    </button>
                                </div>

                                <!-- Begin # DIV Form -->
                                <div id="div-forms">

                                    <!-- Begin # Login Form -->
                                    <form id="login-form">
                                        <div class="modal-body">
                                            <div id="div-login-msg">
                                                <div id="icon-login-msg" class="glyphicon glyphicon-chevron-right"></div>
                                                <span id="text-login-msg">Type your username and password.</span>
                                            </div>
                                            <input id="login_username" class="form-control" type="text" placeholder="Username (type ERROR for error effect)" required>
                                            <input id="login_password" class="form-control" type="password" placeholder="Password" required>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Remember me
                                                </label>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <div>
                                                <button type="submit" class="btn btn-primary btn-lg btn-block">Login</button>
                                            </div>
                                            <div>
                                                <button id="login_lost_btn" type="button" class="btn btn-link">Lost Password?</button>
                                                <button id="login_register_btn" type="button" class="btn btn-link">Register</button>
                                            </div>
                                        </div>
                                    </form>
                                    <!-- End # Login Form -->

                                    <!-- Begin | Lost Password Form -->
                                    <form id="lost-form" style="display:none;">
                                        <div class="modal-body">
                                            <div id="div-lost-msg">
                                                <div id="icon-lost-msg" class="glyphicon glyphicon-chevron-right"></div>
                                                <span id="text-lost-msg">Type your e-mail.</span>
                                            </div>
                                            <input id="lost_email" class="form-control" type="text" placeholder="E-Mail (type ERROR for error effect)" required>
                                        </div>
                                        <div class="modal-footer">
                                            <div>
                                                <button type="submit" class="btn btn-primary btn-lg btn-block">Send</button>
                                            </div>
                                            <div>
                                                <button id="lost_login_btn" type="button" class="btn btn-link">Log In</button>
                                                <button id="lost_register_btn" type="button" class="btn btn-link">Register</button>
                                            </div>
                                        </div>
                                    </form>
                                    <!-- End | Lost Password Form -->

                                    <!-- Begin | Register Form -->
                                    <form id="register-form" style="display:none;">
                                        <div class="modal-body">
                                            <div id="div-register-msg">
                                                <div id="icon-register-msg" class="glyphicon glyphicon-chevron-right"></div>
                                                <span id="text-register-msg">Register an account.</span>
                                            </div>
                                            <input id="register_username" class="form-control" type="text" placeholder="Username (type ERROR for error effect)" required>
                                            <input id="register_email" class="form-control" type="text" placeholder="E-Mail" required>
                                            <input id="register_password" class="form-control" type="password" placeholder="Password" required>
                                        </div>
                                        <div class="modal-footer">
                                            <div>
                                                <button type="submit" class="btn btn-primary btn-lg btn-block">Register</button>
                                            </div>
                                            <div>
                                                <button id="register_login_btn" type="button" class="btn btn-link">Log In</button>
                                                <button id="register_lost_btn" type="button" class="btn btn-link">Lost Password?</button>
                                            </div>
                                        </div>
                                    </form>
                                    <!-- End | Register Form -->

                                </div>
                                <!-- End # DIV Form -->

                            </div>
                        </div>
                    </div>


                    <!-- Area Chart Example-->
                    <!--  
                            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                          </div>
                        </div>
                    <!-- /.container-fluid-->
                    <!-- /.content-wrapper-->
                    <footer class="sticky-footer" style="margin-left:100px; margin-right: 100px;">
                        <div class="container">
                            <div class="text-center">
                                <small>Copyright © Your Website 2018</small>
                            </div>
                        </div>
                    </footer>
                    <!-- Scroll to Top Button-->
                    <a class="scroll-to-top rounded" href="#page-top">
                        <i class="fa fa-angle-up"></i>
                    </a>
                    <!-- Logout Modal-->
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                                <div class="modal-footer">
                                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                                    <a class="btn btn-primary" href="Logout.php">Logout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Bootstrap core JavaScript-->
                    <script src="vendor/jquery/jquery.min.js"></script>
                    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
                    <!-- Core plugin JavaScript-->
                    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
                    <!-- Page level plugin JavaScript-->
                    <script src="vendor/chart.js/Chart.min.js"></script>
                    <script src="vendor/datatables/jquery.dataTables.js"></script>
                    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
                    <!-- Custom scripts for all pages-->
                    <script src="js/sb-admin.min.js"></script>
                    <!-- Custom scripts for this page-->
                    <script src="js/sb-admin-datatables.min.js"></script>
                    <script src="js/sb-admin-charts.min.js"></script>
                </div>
            </div>
        </div>
    </body>

</html>

<?php
//} else {
//    
?>
<!--                    <br><br><br><br>

                    <h2>No has sido logueado, si quiere volver a intentarlo pulse //<?php echo '<a href="login.php">aquí</a>' ?></h2>-->
//<?php
//}
?>