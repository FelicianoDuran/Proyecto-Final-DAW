<?php

include 'setting.php';
    //EDIT
    $inserta = "insert into usuarios (nombre, email, contraseña, telefono) VALUES ('$_POST[nombre]', '$_POST[email]', '$_POST[contraseña]','$_POST[tel]')";

    $result = $conn->query($inserta);
    $conn->close();
    header ("Location: index.php");
?>

