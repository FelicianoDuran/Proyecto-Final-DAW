<?php
include 'setting.php';
$email = $_POST['email'];
$password = $_POST['contraseña'];

$sql = "SELECT * FROM usuarios WHERE email like '$email'";
// and password='$password'
//$sql2 = "SELECT rol from usuarios where email = '$email' and password = '$password' ";
$result = $conn->query($sql);

$row = $result->fetch_array(MYSQLI_ASSOC);
           
 
 if (($password == $row['contraseña']) and ($password <> "")) {
    $_SESSION['nombre'] = $row['nombre'];
    $_SESSION['codigoUsuario'] = $row['codusuario'];
    $_SESSION['start'] = time();
    $_SESSION['email'] = $email;
    $_SESSION['expire'] = $_SESSION['start'] + (5 * 60);
//    $_SESSION['admin'] = TRUE;
    
    ?>
 <h5 class="center-align red-text"><?php echo $row['nombre']; ?></h5>
    
    <?php
       echo '<META HTTP-EQUIV = "Refresh" Content = "0; URL = publicaciones.php"> ';
    
 } else {
       header( "refresh:1;url=index.php" ); 
  echo 'Fallo en la autentificación.'; 
 }