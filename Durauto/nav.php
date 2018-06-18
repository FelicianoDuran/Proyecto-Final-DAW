<?php
if(isset($_SESSION['codigoUsuario'])){
$codigoUsuario = $_SESSION['codigoUsuario'];
$ssql = "SELECT * FROM usuarios WHERE codusuario = $codigoUsuario";
$result = $conn->query($ssql);
$row = $result->fetch_assoc();
}
?> 
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Durauto </title>
        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="style.css">
        <script src="vendor/js/js.js"></script>
       <!--  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"> -->

    </head>
    <body>
        <div id="st-navbar-desktop-wrapper" class="st-navbar-desktop-wrapper st-navbar-desktop-fixed">
            <div class="st-navbar-desktop">
                <div class="container">
                    <div class="st-navbar-desktop-logo">
                        <a class="st-navbar-desktop-logo-link" title="Logo" href="index.php"><img src="images/logo.png"></a>
                    </div>
                    <nav class="st-navbar-desktop-menu" role="navigation">
                        <ul style="color: white;" id="st-navbar-desktop-menu-nav" class="sf-menu">
                            <li><a href="index.php">Inicio</a></li>
                            <?php
                            if (!isset($_SESSION['codigoUsuario'])) {
                                ?>

                                <li><a href="#" role="button" data-toggle="modal" data-target="#login-modal">Mi cuenta</a>
                                    <!--                                <ul>
                                                                        <li><a href="#">Página uno</a></li>
                                                                        <li><a href="#">Página dos</a>
                                                                            <ul>
                                                                                <li><a href="#">Página dos uno</a></li>
                                                                                <li><a href="#">Página dos dos</a></li>
                                                                                <li><a href="#">Página dos tres</a></li>
                                                                            </ul>
                                                                        </li>
                                                                        <li><a href="#">Página tres</a></li>
                                                                    </ul>-->
                                </li>
                                <?php
                            } else {
                                ?>
                                <li><a style="padding: 28px 12px 29px 12px;"><?php echo $_SESSION['nombre']; ?></a>
                                    <ul>
                                        <li><a href="#">Editar Perfil</a></li>
                                        <li><a href="#"></a></li>
                                    </ul>
                                </li>

                                <?php
                            }
                            ?>

                            <!--                            <li><a href="#">Blog</a></li>-->
                            <!--                            <li><a href="#">Mi cuenta</a></li>-->
                            <!--                            <li class="dropdown-right"><a href="#">Right</a>
                                                            <ul>
                                                                <li><a href="#">Página uno</a></li>
                                                                <li><a href="#">Página dos</a>
                                                                    <ul>
                                                                        <li><a href="#">Página dos uno</a></li>
                                                                        <li><a href="#">Página dos dos</a></li>
                                                                        <li><a href="#">Página dos tres</a></li>
                                                                    </ul>
                                                                </li>
                                                                <li><a href="#">Página tres</a></li>
                                                            </ul>
                                                        </li>-->
                            <?php
                            if (!isset($_SESSION['codigoUsuario'])) {
                                ?>
                             <li><a href="publicaciones.php"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Publicaciones</a></li>
<!--                                <li><a href="#" role="button" data-toggle="modal" data-target="#login-modal"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Publicaciones</a>-->
                                    <!--                                <ul>
                                                                        <li><a href="#">Página uno</a></li>
                                                                        <li><a href="#">Página dos</a>
                                                                            <ul>
                                                                                <li><a href="#">Página dos uno</a></li>
                                                                                <li><a href="#">Página dos dos</a></li>
                                                                                <li><a href="#">Página dos tres</a></li>
                                                                            </ul>
                                                                        </li>
                                                                        <li><a href="#">Página tres</a></li>
                                                                    </ul>-->
                                </li>
                                <?php
                            } else {
                                ?>

                                <li><a href="publicaciones.php"><span style="color: #dc3545; padding: 5px;"><?php echo $row['publicaciones']; ?></span><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Publicaciones</a></li>

                                <?php
                            }
                            ?>
                            <?php
                            if (isset($_SESSION['codigoUsuario'])) {
                                ?>

                                <li><a href="Logout.php"><i class="fa fa-sign-out" aria-hidden="true"></i>Cerrar sesión</a></li>

                                <?php
                            }
                            ?>
                        </ul>
                    </nav>
                </div>

            </div>
        </div>
        <!-- BEGIN # MODAL LOGIN -->
        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none; color:black">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header" align="center">
                        <img class="img-circle" id="img_logo" src="images/logo.png">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                        </button>
                    </div>
                    <!-- Begin # DIV Form -->
                    <div id="div-forms">
                        <!-- Begin # Login Form -->
                        <form action="CheckLogin.php" id="login-form" method="post">
                            <div class="modal-body">
                                <div id="div-login-msg">
                                    <div id="icon-login-msg" class="glyphicon glyphicon-chevron-right"></div>
                                    <span id="text-login-msg">Inicia sesión</span>
                                </div>
                                <input name="email" id="login_username" class="form-control" type="email" placeholder="Email" required>
                                <input name="contraseña" id="login_password" class="form-control" type="password" placeholder="Contraseña" required>
                                <!--                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox"> Remember me
                                                                    </label>
                                                                </div>-->
                            </div>
                            <div>
                                <button style="margin: auto; display: block;" type="submit" class="btn btn-primary btn-lg"> Entrar </button>
                            </div>
                            <div class="modal-footer">

                                <div>
                                    <!-- <button id="login_lost_btn" type="button" class="btn btn-link">¿Olvidaste la contraseña?</button> -->
                                    <button id="login_register_btn" type="button" class="btn btn-link">¿Aún no estas registrado?</button>
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
                                <input id="lost_email" class="form-control" type="text" placeholder="E-Mail" required>
                            </div>
                            <div class="modal-footer">
                                <div>
                                    <button type="submit" class="btn btn-primary btn-lg btn-block">Send</button>
                                </div>
                                <div>
                                    <button id="lost_login_btn" type="button" class="btn btn-link">Loguéate</button>
                                    <button id="lost_register_btn" type="button" class="btn btn-link">Register</button>
                                </div>
                            </div>
                        </form>
                        <!-- End | Lost Password Form -->

                        <!-- Begin | Register Form -->
                        <form action="crea-usuario.php" id="register-form" name="registration" class="pure-form" method="post" style="display:none;">
                            <div class="modal-body">
                                <div id="div-register-msg">
                                    <div id="icon-register-msg" class="glyphicon glyphicon-chevron-right"></div>
                                    <span id="text-register-msg">Regístrate.</span>
                                </div>

                                <input type="text" id=firstname" name="nombre" class="form-control" type="text" placeholder="Usuario" required>
                                <input style="margin-top: 10px;" type="email" name="email" id="name" class="form-control"  placeholder="E-Mail" required>
                                <input style="margin-top: 10px;" type="text" name="tel" if="tel" class="form-control" placeholder="Teléfono" maxlength="9" required>
<!--                                <input id="register_password" class="form-control" type="password" placeholder="Password" required>-->
<!--                                 <input type="password" name="pass1" id="pass1">
                                 <input type="password" name="pass2" id="pass2" onkeyup="checkPass(); return false;">-->
<!--                                   <span id="confirmMessage" class="confirmMessage"></span>-->
                                <input required type="password" name="contraseña" id="psw" class="form-control" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="La contraseña debe contener al menos una mayuscula, un numero y 8 caracteres o más">
                                <input style="margin-top: 10px;" class="btn btn-primary" type="submit" value="Enviar">
                                <!--
                                <input type="password" class="form-control" placeholder="Confirm Password" id="confirm_password" required>
                                <!--                                <button type="submit" class="pure-button pure-button-primary">Confirm</button>-->
                            </div>
                            <div class="modal-footer">

                                <div>
                                    <button id="register_login_btn" type="button" class="btn btn-link">Loguéate</button>
                                    <!-- <button id="register_lost_btn" type="button" class="btn btn-link">Lost Password?</button> -->
                                </div>
                            </div>
                        </form>
                        <!-- End | Register Form -->

                    </div>
                    <!-- End # DIV Form -->

                </div>
            </div>
        </div>
        <script src="vendor/jquery/jquery.min.js"></script>
         <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
       <!--  Core plugin JavaScript -->
         <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <!-- Page level plugin JavaScript -->
        <script src="vendor/chart.js/Chart.min.js"></script>
        <script src="vendor/datatables/jquery.dataTables.js"></script>
        <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
       <!--   Custom scripts for all pages -->
        <script src="js/sb-admin.min.js"></script>
     <!--     Custom scripts for this page -->
        <script src="js/sb-admin-datatables.min.js"></script>
        <script src="js/sb-admin-charts.min.js"></script>
    </body>
</html>
