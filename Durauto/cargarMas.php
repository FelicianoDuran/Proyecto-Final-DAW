<?php
include("setting.php");
// <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

if(!empty($_POST["id"])){

	 $query = $conn->query("SELECT COUNT(*) as num_rows FROM publicaciones WHERE codpublicacion < ".$_POST['id']." ORDER BY codpublicacion DESC");
    $row = $query->fetch_assoc();
    $totalRowCount = $row['num_rows'];
    $showLimit = 4;

$consulta = "SELECT * FROM publicaciones WHERE codpublicacion > ".$_POST['id']." ORDER BY codpublicacion ASC LIMIT $showLimit";
$resultado = $conn->query($consulta);


if($resultado->num_rows > 0){
        while($row = $resultado->fetch_assoc()){
            $postID = $row['codpublicacion'];
    ?>
       <div class="row sombra_row" style="padding:15px;">
            <div class="col-md-4">
                <img style="width:100%; height:auto; min-height:224px;" src="<?php echo $row['imagen'] ?>">
            </div>
            <div class="col-md-8">
             <h2><?php echo $row['modelo'] ?></h2>
             <p><?php echo $row['infoConector']; ?></p><br>
             <span>Precio:<?php echo $row['precio'];?> € |</span>
             <span>Kilómetros:<?php echo $row['kilometros'];?> kms |</span>
             <span>Año:<?php echo $row['año'];?> </span>
            </div>
                                        
       </div>
    <?php } ?>
    <?php if($totalRowCount > $showLimit){ ?>
        <div class="show_more_main" id="show_more_main<?php echo $codpublicacion; ?>">
            <h2 style="text-align: center; cursor: pointer;" id="<?php echo $postID; ?>" class="show_more" title="Load more posts">Ver más resultados..</h2>
            <h2 class="loding" style="display: none;"><h2 class="loding_txt" style="display: none;">Cargando...</h2></h2>
        </div>
    <?php } ?>
<?php
    }
}
?>