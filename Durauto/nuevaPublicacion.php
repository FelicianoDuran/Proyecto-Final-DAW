<?php
include("setting.php");
//////////////////////////////////////////////////////
if($_POST['marca2'] == '') {
    $marca = $_POST['marca'];
} else {
    $marca = $_POST['marca2'];
}
//$marca = $_POST['marca'];
$modelo = $_POST['modelo'];
$combustible = $_POST['combustible'];
$año = $_POST['año'];
$kilometros = $_POST['km'];
$precio = $_POST['precio'];
$codusuario = $_POST['codusuario'];
$info = $_POST['info'];

//////////////////////////////////////////////////////
$imagen = $_FILES['fileupload']["name"];

            $ruta = 'ImgCoches/' . $marca . '/';
        
       $uploads_dir = 'ImgCoches/' . $marca . '/';
                $ficha_vivienda = '';
                if (!is_dir($uploads_dir)) {
                    mkdir($uploads_dir, 0777);
    }
                $imagenPrincipal;
                $tamañoMax = count($_FILES['fileupload']['name']);
                for($i=0; $i<$tamañoMax; $i++){

                        $tmp_name = $_FILES['fileupload']["tmp_name"][$i];
                        $name = $_FILES['fileupload']["name"][$i];
                        $ext = substr(strrchr($name, '.'), 1);
                        switch(strtolower($ext)) {
                                        case 'jpg':  
                                        case 'jpeg':
                                        case 'png':
                                        case 'gif':
                                        case 'png':
                                        case 'doc':
                                        case 'txt':
                                            $archivo = $uploads_dir.$name;
                                                move_uploaded_file($tmp_name, $archivo);
                                                $rutaFoto[] = $ruta.$name;
                                                break;
                                        case 'pdf':
                                               $archivo = $uploads_dir.$name;
                                                move_uploaded_file($tmp_name, $archivo);
                                                $ficha_vivienda = $ruta.$name;
                                                break;
                                        default:
                                                exit();
                                                break;
                                }
                }
        natcasesort($rutaFoto);
        //array_splice($rutaFoto, $a, 1);
        $rutaFoto1 = $rutaFoto[0];
        $imagenes = '';
        foreach($rutaFoto as $foto){
            $imagenes = $imagenes.$foto.',';
             // $imagenes = "ImgCoches/" . $marca . "/" . $imagenes;
        }

    $sql = "Insert into publicaciones (marca,año,imagen,modelo,infoConector,codusuario,codcombustible,precio, kilometros) VALUES ('$marca','$año','$imagenes','$modelo','$info','$codusuario' , '$combustible', '$precio', '$kilometros')";
    $resultado = $conn->query($sql);
    echo "$sql";

header("location: publicaciones.php");
$conn->close();