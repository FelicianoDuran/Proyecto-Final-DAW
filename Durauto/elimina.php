<?php
$host_db = "localhost";
$user_db = "root";
$pass_db = "";
$db_name = "aduran";

$conexion = new mysqli($host_db, $user_db, $pass_db, $db_name);


if ($conexion->connect_errno > 0) {
  echo "No se ha podido establecer conexion con el servidor de bases de datos.<br>";
  die ("Error: " . $conexion->connect_error);
  } else {
      
  //$consulta = $conexion->query('SELECT * FROM vehiculos');
  
      $id = $_POST['del_id'];

      // Delete record
      $query = "DELETE FROM vehiculos WHERE id_vehiculo= $id";
      $resultado = mysqli_query($conexion,$query);
      
      //echo ($resultado ? "true" : "false");
      echo $resultado;
      //echo 1;
  }
?>

