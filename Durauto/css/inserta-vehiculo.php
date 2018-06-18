<?php

include 'setting.php';

    $inserta = "insert into vehiculos (marca, modelo, precio, puertas, edad, tipo) values ('$_POST[marca]','$_POST[modelo],'$_POST[precio]','$_POST[puertas]','$_POST[FECHA]','$_POST[tipo]'";

    $result = $_SESSION['CONN']->query($inserta);
    
    $_SESSION['CONN']->close();
    header ("Location: tables.php");

?>

