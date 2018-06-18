<?php
include 'setting.php';
// $codigoUsuario = $_SESSION['codigoUsuario'];
if (!isset($_SESSION['codigoUsuario'])) {
    $codigoUsuario = 0;
} else {
$codigoUsuario = $_SESSION['codigoUsuario'];
$ssql = "SELECT * FROM usuarios INNER JOIN publicaciones ON usuarios.codusuario = publicaciones.codusuario WHERE usuarios.codusuario = $codigoUsuario";
$ssql2 = "SELECT * FROM publicaciones INNER JOIN usuarios ON publicaciones.codusuario = usuarios.codusuario WHERE publicaciones.codusuario = $codigoUsuario";
$listMarcas = "SELECT DISTINCT marca from publicaciones order by 1";
    $resultado2 = $conn->query($listMarcas);
    $resultado = $conn->query($ssql2);
    $result = $conn->query($ssql);
    $row = $result->fetch_assoc();
    $fila = $resultado->fetch_assoc();
    // echo "$ssql2";

    $publicaciones = $fila['publicaciones'];


}
?>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
       <title>Durauto</title>
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
            hr {
                position: relative;
                display: block!important;
                height: 1px!important;
                border: 1px!important;
                border-top: 1px solid #343a40!important;
                margin: 5em 0 !important;
                padding: 0!important;
            }
            
            .animated {
                -webkit-animation-duration: .5s;
                animation-duration: .5s;
                -webkit-animation-fill-mode: both;
                animation-fill-mode: both;
                -webkit-animation-timing-function: linear;
                animation-timing-function: linear;
                animation-iteration-count: infinite;
                -webkit-animation-iteration-count: infinite;
              }
              @-webkit-keyframes bounce {
                0%, 100% {
                  -webkit-transform: translateY(0);
                }
                50% {
                  -webkit-transform: translateY(-5px);
                }
              }
              @keyframes bounce {
                0%, 100% {
                  transform: translateY(0);
                }
                50% {
                  transform: translateY(-5px);
                }
              }
              .bounce {
                -webkit-animation-name: bounce;
                animation-name: bounce;
              }
        </style>
    </head>

    <body>
        <?php
        include ("nav.php");

        if ($codigoUsuario == 0) {
            ?>
            <div class="container">
                <div class="row">
                    <div class="col-5">
                        <hr>
                    </div>
                    <div class="col-2">
                        <img id="animated-example" class="animated bounce" style="width: 70%;margin: auto; display: block;" src="images/icons8-sedán-64.png">
                        
                        
                    </div>

                    <div class="col-5">
                        <hr>
                    </div>
                </div>


                <div class="row">

                    <div class="col-6">
                        <h1>Aún no tienes publicaciones </h1>
                    </div>
                    <div class="col-6">
                        <h1>Para empezar a publicar necesitas registrarte o identifícate si ya tienes una cuenta!</h1>
                        
                        <a style="color: dimgray;" class="btn btn-sm animated-button victoria-one" href="#" role="button" data-toggle="modal" data-target="#login-modal">Mi cuenta</a>
                </div>
                </div>
            </div>
            <?php
        } else {
            ?>

            <div class="container">
                <div class="row"> <h1>Actualmente cuentas con estas publicaciones:</h1></div>
                <div class="col-md-2">
                        <button type="button" name="age" id="age" data-toggle="modal" data-target="#add_data_Modal" class="btn btn-warning">Nueva publicación</button>
                </div>
          
                <?php
                $num_total_registros = $resultado->num_rows;
                if ($num_total_registros <> 0) {
                    while ($row = $resultado->fetch_array()) {
                      $imagen = explode(",", $row['imagen']);
                      
                        $postID = $row['codpublicacion'];
                        ?>
            <div class="row" style="padding:15px;">

                    <div class="col-md-4">
                    <img style="width:100%; height:auto; min-height:224px;" src="<?php echo $imagen[0] ?>">
                    </div>
                    <div class="col-md-6">
                     <h2><?php echo $row['modelo'] ?></h2>
                     <p><?php echo $row['infoConector']; ?></p><br>
                     <span>Precio:<?php echo $row['precio'];?> € |</span><span>  Kilometros:<?php echo $row['kilometros'];?> kms</span> <span>  Combstible:<?php echo $row['kilometros'];?> kms</span>
                    </div>
                    <div class="col-md-2">
                      <button class="btn btn-danger btn_delete" data-id="<?php echo $postID ?>">Eliminar</button>
                     </div>
                    
                </div>
                        <?php
                    }
                }

                ?>
                <div class="col-md-2">
                        <button type="button" name="age" id="age" data-toggle="modal" data-target="#add_data_Modal" class="btn btn-warning">Insertar nueva publicación</button>
                </div>

                    <div id="add_data_Modal" class="modal fade">
                     <div class="modal-dialog">
                      <div class="modal-content">
                       <div class="modal-header">
                        <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
                        <h4 class="modal-title">¿Qué quieres anunciar?</h4>
                       </div>
                       <div class="modal-body">
                        <form method="post" action="nuevaPublicacion.php" id="insert_form" enctype="multipart/form-data">
                         <label>Marca</label>
                         <select id="marca" name="marca2">
                            <option value="">Listado de Marcas existentes</option>
                            <?php
                            if ($resultado2->num_rows > 0) {
                                while ($fila = $resultado2->fetch_assoc()) {
                                    echo "<option  value='" . $fila['marca'] . "'>" . $fila['marca'] . "</option>";
                                }
                            }
                            ?>
                        </select>
                        
                        <p>¿No existe la marca que buscas?</p> <span id="mostrar" style="cursor:pointer;"><i><em>Haz click aquí para añadir una nueva.</em></i></span>
                        <div class="col-md-6 col-sm-6 col-xs-12" id="campoMarca" style="display:none;">
                            <input name="marca" type="text"  id="añadirMarca" class="form-control marca" placeholder="Ford,Kia...." >
                            <span id="ocultar" style="cursor:pointer;"><i><em>Cerrar</em></i></span>
                        </div>
                        <b>
                         <br>
                         <label>Modelo</label>
                         <input type="text" name="modelo" id="modelo" class="form-control">
                         <br>
                         <label>Combustible</label>
                         <select name="combustible" id="combustible" class="form-control">
                          <option value="2">electrico/hibrido</option>  
                          <option value="3">Diesel</option>
                         </select>
                         <br>
                         
                         <label>Kilometros</label>
                         <input type="text" name="km" id="km" class="form-control">
                         <br>  
                         <label>Año de matriculación</label>
                         <input type="number" name="año" id="año" class="form-control" maxlength="10" max="2018">
                         <br>
                         <label>precio</label>
                         <input type="number" name="precio" id="precio" class="form-control" maxlength="10">
                         <br>
                         <label>Información adicional:</label>
                         <input type="text" name="info" id="info" class="form-control">
                         <br>
                         <label>Imagenes</label>
                         <input class="form-control col-md-7 col-xs-12" id="fileupload" type="file" name="fileupload[]" value="fileupload" multiple>
                         <input type="hidden" value="<?php echo $codigoUsuario ?>" name="codusuario">
                         <input type="submit" name="insert" id="insert" value="Insert" class="btn btn-success">
                        </form>

                       </div>
                       <!-- <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                       </div> -->
                      </div>
                     </div>
                    </div>
<!-- 
                       <script>  
                        $(document).ready(function(){
                         $('#insert_form').on("submit", function(event){  
                          event.preventDefault();  
                          if($('#marca').val() == "")  
                          {  
                           alert("Marca is required");  
                          }
                          else if($('#modelo').val() == '')  
                          {  
                           alert("Modelo is required");  
                          }  
                          else if($('#año').val() == '')  
                          {  
                           alert("Address is required");  
                          }  
                          else if($('#designation').val() == '')
                          {  
                           alert("Designation is required");  
                          }
                           
                          else  
                          {  
                           $.ajax({
                            url:"insert.php",  
                            method:"POST",  
                            data:$('#insert_form').serialize(),  
                            beforeSend:function(){  
                             $('#insert').val("Inserting");  
                            },  
                            success:function(data){  
                             $('#insert_form')[0].reset();  
                             $('#add_data_Modal').modal('hide');  
                             $('#employee_table').html(data);  
                            }  
                           });  
                          }  
                         });

                     </script> -->
           <!-- BEGIN # MODAL LOGIN -->
        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none; color:black">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header" align="center">
                        <img class="img-circle" id="img_logo" src="https://www.smoothemes.com/media/jquery/navbar-bootstrap-superfish/logo.svg">
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
                                    <button id="login_lost_btn" type="button" class="btn btn-link">¿Olvidaste la contraseña?</button>
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
                                    <button id="lost_login_btn" type="button" class="btn btn-link">Log In</button>
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

                                <input type="text" id=firstname" name="nombre" class="form-control" type="text" placeholder="Username" required>
                                <input style="margin-top: 10px;" type="email" name="email" id="name" class="form-control"  placeholder="E-Mail" required>
<!--                                <input id="register_password" class="form-control" type="password" placeholder="Password" required>-->
<!--                                 <input type="password" name="pass1" id="pass1">
                                 <input type="password" name="pass2" id="pass2" onkeyup="checkPass(); return false;">-->
<!--                                   <span id="confirmMessage" class="confirmMessage"></span>-->
                                <input required type="password" name="contraseña" id="psw" class="form-control" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="La contraseña debe contener al menos una mayuscula, un numero y 8 caracteres o más">
                                <input style="margin-top: 10px;" class="btn btn-primary" type="submit" value="Enviar">
                                <!--
                                <input type="password" class="form-control" placeholder="Confirm Password" id="confirm_password" required>
                                                              <button type="submit" class="pure-button pure-button-primary">Confirm</button>-->
                            </div>
                            <div class="modal-footer">

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
        <script>
        $(document).ready(function () {
            $("#mostrar").click(function () {
                $("#campoMarca").css("display", "");
            });
        });
        </script>
        <script>
            $(document).ready(function () {
                $("#ocultar").click(function () {
                    $("#campoMarca").css("display", "none");
                });
            });
        </script>
        <script>
          
          $(document).on('click', '.btn_delete', function(){
            var id = $(this).data("id");
            if(confirm("¿Seguro que quieres eliminar esta publicación?")){
              $.ajax({
                url: "borrarPublicacion.php",
                method: "POST",
                data:{id:id},
                success:function(data){
                  alert(data);
                  fetch_data();
                }
              });
              
            }
          });
        
        </script>

        <div class="container">
                        <footer class="sticky-footer" style="position: relative; margin-left:100px; margin-right: 100px;">
                                    <div class="container">
                                        <div class="text-center">
                                            <small>Copyright © Durauto 2018</small>
                                        </div>
                                    </div>
                                </footer>
                    </div> 
    </body>
    
</html>

<?php
mysqli_free_result($result);
$conn->close();
}
?>