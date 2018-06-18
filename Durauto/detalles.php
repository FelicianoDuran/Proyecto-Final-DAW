<?php

include 'setting.php';

$postID = $_GET["cod"];

    $ssql = "SELECT * from publicaciones where codpublicacion = $postID";
    //echo $ssql2;

    $resultado = $conn->query($ssql);
    $fila = $resultado->fetch_assoc();
    $codigousuario = $fila['codusuario'];

    $ssql2 = "SELECT * FROM usuarios where codusuario = $codigousuario";
     $result = $conn->query($ssql2);
    $row = $result->fetch_assoc();

    $imagen = explode(",", $fila['imagen']);
    //$ssql4 = "select * from tarifas where referencia = '".$fila['referencia']."'";
    //echo $ssql4;
    //$resultado4 = $conn->query($ssql4);
    //$fila4 = mysqli_fetch_assoc($resultado4);
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
        <link href="css/sb-admin.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="style.css">
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    </head>
        <body>  

                <?php include ("nav.php"); ?>
                <?php include ("youtube.php"); ?>
                <!-- Section Title -->
               
                        <div class="container">            
                             <div style="padding: 50px;" class="row">
                                        <div class="col-md-4">
                                        <h2><?php echo $fila['modelo'] ?></h2>
                                        <img style="width:100%; height:auto; min-height:224px;" src="<?php echo $imagen[0]; ?>">
                                        </div>
                                        <div style="margin-top: 6%;" class="col-md-6">
                                         
                                         <p><?php echo $fila['infoConector']; ?></p><br>
                                         <span>Precio:<?php echo $fila['precio'];?> € |</span>
                                         <span>Kilómetros:<?php echo $fila['kilometros'];?> kms |</span>
                                         <span>Precio:<?php echo $fila['año'];?>  |</span>
                                         
                                        </div>
                                        </div>

                                        
                              
                        <?php

                        ?>
                        <div style="padding: 50px;" class="row">
                                            <div class="col-md-8">
                                            <h3>Datos del anunciante:</h3>
                                            <div class="col-md-4">
                                                <p style="font-weight: bold; ">Email: <?php echo $row['email']; ?></p>
                                                <p style="font-weight: bold; ">Numero de teléfono: <?php echo $row['telefono']; ?></p>
                                            </div>

                                    </div>
                        </body>
                        </html>
                        <?php
mysqli_free_result($resultado);
$conn->close();
?>