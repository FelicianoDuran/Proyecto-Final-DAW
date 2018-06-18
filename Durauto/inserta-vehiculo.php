<?php

include 'setting.php';
    //EDIT
    $inserta = "insert into vehiculos (marca, modelo, precio, puertas, edad, tipo) VALUES ('$_POST[marca]', '$_POST[modelo]', '$_POST[precio]', '$_POST[puertas]', '$_POST[fecha]', '$_POST[tipo]')";

    $result = $_SESSION['CONN']->query($inserta);
    $_SESSION['CONN']->close();
    header ("Location: tables.php");
?>
