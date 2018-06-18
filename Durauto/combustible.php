<?php

include("setting.php");
$combustible = $_POST['id'];
$infoConector = 'infoConector'; // Campo en Español por defecto 

$buscar = "SELECT codpublicacion,imagen,modelo,precio,kilometros,año, $infoConector as 'infoConector' from publicaciones WHERE codcombustible = $combustible";
$resultado = $conn->query($buscar);
//$resultado = $resultado->fetch_assoc();
//$modelo = $resultado['modelo'];
//$info = $resultado['infoConector'];
//$imagen = $resultado['imagen'];
$arrayResultado = array();

while ($fila = $resultado->fetch_assoc()) {
	$codpublicacion = ['codpublicacion'];
    $modelo = $fila['modelo'];
    $info = $fila['infoConector'];
    $imagen = explode(",", $fila['imagen']);
    
     $precio = $fila['precio'];
     $kilometros = $fila['kilometros'];
     $año = $fila['año'];

    $arrayResultado [] = array("codpublicacion" => $codpublicacion, "modelo" => $modelo, "info" => $info, "imagen" => $imagen[0], "precio" => $precio, "kilometros" => $kilometros, "año" => $año);
}

$json = json_encode($arrayResultado);
echo $json;
//echo $model
//echo $modelo,$info,$imagen;