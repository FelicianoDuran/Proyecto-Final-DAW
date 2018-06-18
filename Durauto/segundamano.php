<?php
//ini_set('display_errors', 1);
//error_reporting(E_ALL);
include 'setting.php';

if (isset($_POST["location"])) {
    $zona = $_POST['location'];
} else {
    $zona = 0;
    $tipo = 0;
    $entrada = 0;
    $salida = 0;
    $numpersonas = 0;
}
if (!isset($_GET["campo"])) {
    $campo = 'codpublicacion';
    $orden = 'DESC';
} else {
    $campo = $_GET["campo"];
    $orden = $_GET["orden"];
}

if (($entrada <> '') && ($salida <> '')) {
    include_once('calcular_precio.php');
}
/* * ****************** PAGINACION ******************************** */

$TAMANO_PAGINA = 10;
$pagina = 0;

if (!isset($_GET["tipo"])) {
    $tipovehiculo = '';
} else {
    $tipovehiculo = $_GET["tipo"];
}

if (!isset($_GET["combustible"])) {
    $tipocombustible = '';
} else {
    $tipocombustible = $_GET["combustible"];
}
if (!$pagina) {
    $inicio = 0;
    $pagina = 1;
} else {
    $inicio = ($pagina - 1) * $TAMANO_PAGINA;
}

/* * **********************RESULTADOS************************ */

    $ssql = "select * from publicaciones order by codpublicacion limit " . $inicio . "," . $TAMANO_PAGINA;
    $resultado = $conn->query($ssql);

   

function getExcerpt($str, $startPos = 0, $maxLength = 100) {
    if (strlen($str) > $maxLength) {
        $excerpt = substr($str, $startPos, $maxLength - 3);
        $lastSpace = strrpos($excerpt, ' ');
        $excerpt = substr($excerpt, 0, $lastSpace);
        $excerpt .= '...';
    } else {
        $excerpt = $str;
    }

    return $excerpt;
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
        <title>Autosduran </title>
        <link href="css/sb-admin.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="style.css">
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    </head>
    <body>
        <?php include ("nav.php"); ?>
         <?php include ("youtube.php"); ?>
        <!-- End Section Title -->

        <!-- End content info -->
        <section class="content_info_mod">
            <div class="container">

                <section class="row padding_top">
                    <!-- Properties -->
                    <div class="col-md-12">
                        <!-- Bar Filter properties-->
                        <div class="bar_properties" id="barra_filtros">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="select">
                                     <select name="order" id="order">
                                      <option>Ordenar por: </option>
                                      <option value="ASC">Menor precio</option>
                                      <option value="DESC">Mayor precio</option>
                                      
                                    </select>
                                    </div>
                                    <span style="cursor: pointer;" value="Refresh Page" onClick="window.location.reload()">Eliminar filtros..</span>
                                </div>

                                <?php
//                                include("../lib/conexion.php");
//                                $link = Conectarse();
                                $consulta = "select distinct marca from publicaciones order by 1";
                                $resultadotipo = $conn->query($consulta);

//                                $ssql101 = "select DISTINCT combustible from vehiculos";
//                                $resultadotipo2 = $conn->query($ssql101);
                                ?>

                                <div class="col-md-4">
<!--                               <strong class="">Tipo de propiedad</strong>-->
                                    <div class="select">
                                        <!-- form-control <form action="pedir-presupuesto.php" method="POST"-->
                                        <select name="slct" class="" name="marca" id="nombMarca">
                                            <option onchange="location = this.value;" value="segundamano.php">Todas las marcas</option>
                                            <?php
                                            $result = $conn->query($consulta);
                                            while ($row = $result->fetch_assoc()) {
                                                echo "<option value='" . $row['marca'] . "'>" . $row['marca'] . "</option>";
                                            }
                                            ?>
                                        </select>
                                       
                                    </div>

                               
<!--                               <strong class="">Tipo de propiedad</strong>-->
                                     <div class="select">
                                           <select class="" name="modelos" id="nombModelo">
                                            <option>Modelos</option>
                                        </select>
                                     </div>
                                     
                                     
                                     
                                 </div>
                                <div class="col-md-4">
                                        <div class="select">
                                            <select name="combustible" id="combustible">
                                              <option>Combustible: </option>
                                              <option value="2">Eéctrico/híbrido</option>
                                              <option value="3">Diesel</option>
                                      
                                            </select>
                                        </div>
                                    

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="column_attr clearfix align_justify" style="">
                        <div id="output">
                            <div class="container">
                              
                                    <?php
                                    $num_total_registros = $resultado->num_rows;
                                    if ($num_total_registros <> 0) {
                                        while ($row = $resultado->fetch_array()) {
                                            $postID = $row['codpublicacion'];

                                            ?>
                                         
                               <a href="detalles.php?cod=<?php echo $postID;?>"> <div class="row sombra_row" style="padding:15px;">
                                        <div class="col-md-4">
                                        <img style="width:100%; height:auto; min-height:224px;" src="<?php echo $row['imagen'] ?>">
                                        </div>
                                        <div class="col-md-6">
                                         <h2><?php echo $row['modelo'] ?></h2>
                                         <p><?php echo $row['infoConector']; ?></p><br>
                                         <span>Precio:<?php echo $row['precio'];?> € |</span>
                                         <span>Kilómetros:<?php echo $row['kilometros'];?> kms |</span>
                                         <span>Precio:<?php echo $row['año'];?>  |</span>
                                         
                                        </div>
                                        
                                    </div>
                                </a>
                                            <?php
                                        }
                                    }
                                    ?>

                                <div class="show_more_main" id="show_more_main<?php echo $postID; ?>">
                                    <h2 style="text-align: center; cursor: pointer;" id="<?php echo $postID; ?>" class="show_more" title="Cargar mas resultados">Ver más resultados..</h2>
                                    <h2 class="loding" style="display: none;"><span class="loding_txt">Cargando...</span></h2>
                                </div>

                            </div>
                        
                        </div>
                        <!--<a href="pedir-presupuesto.php"><button >Consulta presupuesto</button></a>-->
                    </div>
                    <div class="container">
                        <footer class="sticky-footer" style="position: relative; margin-left:100px; margin-right: 100px;">
                                    <div class="container">
                                        <div class="text-center">
                                            <small>Copyright © Durauto 2018</small>
                                        </div>
                                    </div>
                                </footer>
                    </div>                    
                    <!-- End Properties -->
                </section>
                
            </div>

        </section>
        <!-- End content info-->
        <!-- Sponsors-->
        <!-- End Sponsors-->
        <!-- Full info-->
        <!-- End Full info-->
        <?php ?>
        <!-- End layout-->
        <script>
            $("#nombMarca").change(function () {
//            alert(this.value);
                var data = {};
                data.id = this.value;

                $.ajax({
                    url: 'buscarMarca.php',
                    type: 'post',
                    data: data,
                    success: function (response) {
                        $('select[name=modelos]').empty();
                        $('select[name=modelos]').append("<option>Selecciona un modelo</option>");
                        var array = jQuery.parseJSON(response);
                         $('#output').empty();
                        $.each(array, function (key, value) {
                           
                            $('select[name=modelos]').append("<option value=" + value.codigo + ">" + value.modelo + "</option>");
                             $('#output').append("<div style='padding:15px;' class='row'><a href='detalles.php?cod="+ value.codigo +"'> <div class='row sombra_row' style='padding:15px;'><div class='col-md-4'><img style='width:100%; height:auto; min-height:224px;' src='" + value.imagen + "'></div><div class='col-md-6'> <h2>" + value.modelo + " </h2> <p>"+ value.info + "</p> <br><span>"+ value.precio +" € | </span><span>"+ value.kilometros + " kms</span> | </span><span>"+ value.año + "</span></div></div></a>");
                        });
                    }
                });
            });
        </script>
        <script>
           $(document).ready(function(){
            $(document).on('click','.show_more',function(){
                var ID = $(this).attr('id');
                $('.show_more').hide();
                $('.loding').show();
                $.ajax({
                    type:'POST',
                    url:'cargarMas.php',
                    data:'id='+ID,
                    success:function(html){
                        $('#show_more_main'+ID).remove();
                        $('#output').append(html);
                    }
                });
            });
        });
        </script>
        <script>
            //        $("#consultar").click(function () {
            $("#nombModelo").change(function () {
                var valor = $('select[name=modelos]').val();
                //            alert(valor);
                var data = {};
                data.id = valor;
                $.ajax({
                    url: 'buscarModelo.php',
                    type: 'post',
                    data: data,
                    success: function (response) {
                        $('#output').empty();

                        var array = jQuery.parseJSON(response);

                        $('#output').append("<div class='row'><div class='col-md-4'><img style='width:100%; height:auto; min-height:224px;' src='" + array[0].imagen + "'></div><div class='col-md-8'> <h2>" + array[0].modelo + " </h2> <p>"+ array[0].info + "</p> <br><span>"+ array[0].precio +" € |</span><span> Kilómetros "+ array[0].kilometros +" kms |</span><span>"+ array[0].año +" </span></div></div>");



                    }
                });
            });
        </script>
         <script>
            //        $("#consultar").click(function () {
            $("#order").change(function () {
                var valor = $('select[name=order]').val();
                //            alert(valor);
                var data = {};
                data.id = valor;
                $.ajax({
                    url: 'ordenar.php',
                    type: 'post',
                    data: data,
                    success: function (response) {
                         var array = jQuery.parseJSON(response);
                         $('#output').empty();
                        $.each(array, function (key, value) {
                           
                            $('select[name=modelos]').append("<option value=" + value.codigo + ">" + value.modelo + "</option>");
                             $('#output').append("<div style='padding:15px;' class='row'><a href='detalles.php?cod="+ value.codpublicacion +"'> <div class='row sombra_row' style='padding:15px;'><div class='col-md-4'><img style='width:100%; height:auto; min-height:224px;' src='" + value.imagen + "'></div><div class='col-md-6'> <h2>" + value.modelo + " </h2> <p>"+ value.info + "</p> <br><span>"+ value.precio +" € | </span><span>"+ value.kilometros + " kms</span> | </span><span>"+ value.año + "</span></div></div></a>");
                        });



                    }
                });
            });
        </script>
        <script>
            //        $("#consultar").click(function () {
            $("#combustible").change(function () {
                var valor = $('select[name=combustible]').val();
                //            alert(valor);
                var data = {};
                data.id = valor;
                $.ajax({
                    url: 'combustible.php',
                    type: 'post',
                    data: data,
                    success: function (response) {
                         var array = jQuery.parseJSON(response);
                         $('#output').empty();
                        $.each(array, function (key, value) {
                           
                            $('select[name=modelos]').append("<option value=" + value.codigo + ">" + value.modelo + "</option>");
                             $('#output').append("<div style='padding:15px;' class='row'><a href='detalles.php?cod="+ value.codpublicacion +"'> <div class='row sombra_row' style='padding:15px;'><div class='col-md-4'><img style='width:100%; height:auto; min-height:224px;' src='" + value.imagen + "'></div><div class='col-md-6'> <h2>" + value.modelo + " </h2> <p>"+ value.info + "</p> <br><span>"+ value.precio +" € | </span><span>"+ value.kilometros + " kms</span> | </span><span>"+ value.año + "</span></div></div></a>");
                        });



                    }
                });
            });
        </script>

    </body>
</html>
<?php
mysqli_free_result($result);
$conn->close();
?>