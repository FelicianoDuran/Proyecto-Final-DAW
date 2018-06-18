<?php
include 'setting.php';
$id = $_POST['id'];
$sql = "DELETE from publicaciones where codpublicacion = $id";
if(mysqli_query($conn, $sql)){
		echo "Se ha eliminado correctamente";
} else {
	echo "No se ha podido eliminar";
}
header( "refresh:1;url=index.php" ); 
?>