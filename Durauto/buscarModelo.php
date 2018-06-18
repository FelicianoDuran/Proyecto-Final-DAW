<?php

include("setting.php");
$codigo = $_POST['id'];
$infoConector = 'infoConector'; // Campo en Español por defecto 

$buscar = "SELECT imagen,modelo,precio,kilometros,año, $infoConector as 'infoConector' from publicaciones where codpublicacion=$codigo";
$resultado = $conn->query($buscar);
//$resultado = $resultado->fetch_assoc();
//$modelo = $resultado['modelo'];
//$info = $resultado['infoConector'];
//$imagen = $resultado['imagen'];
$arrayResultado = array();

while ($fila = $resultado->fetch_assoc()) {
    $modelo = $fila['modelo'];
    $info = $fila['infoConector'];
    $imagen = explode(",", $fila['imagen']);
    
     $precio = $fila['precio'];
     $kilometros = $fila['kilometros'];
     $año = $fila['año'];

    $arrayResultado [] = array("modelo" => $modelo, "info" => $info, "imagen" => $imagen[0], "precio" => $precio, "kilometros" => $kilometros, "año" => $año);
}

$json = json_encode($arrayResultado);
echo $json;
//echo $modelo,$info,$imagen;