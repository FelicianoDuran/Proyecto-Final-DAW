<?php
include("setting.php");

$marca = $_POST['id'];
// $return_arr = array();
if($marca == "todos"){
    $consulta = "SELECT codpublicacion,modelo,imagen,precio, infoConector from publicaciones limit 5";
$resultado = $conn->query($consulta);
} else {
$consulta = "SELECT distinct codpublicacion,modelo,imagen,precio, infoConector, kilometros, año from publicaciones where marca = '$marca'";
$resultado = $conn->query($consulta);
}
while($fila = $resultado->fetch_assoc()) {
 $codigo = $fila['codpublicacion'];
$modelo = $fila['modelo'];
$imagen = explode(",", $fila['imagen']);
$info = $fila['infoConector'];
$precio = $fila['precio'];
$kilometros = $fila['kilometros'];
$año = $fila['año'];
   
$return_arr[] = array("codigo" => $codigo,
        "modelo" => $modelo,
        "imagen" => $imagen[0],
        "info"=> $info,
    	"precio"=> $precio,
    	"kilometros"=> $kilometros,
    	"año"=> $año);
}
$json = json_encode($return_arr);
echo $json;
//echo "adwdwadwadwa";
//exit();
//echo "asdadsadsad";