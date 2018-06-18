<?php function menu($pagina = 'index'){ ?>

<div  style="float:left;" style="height:auto;"> 
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.php">Autos duran</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
     
        <li class="nav-item <?php echo($pagina=='table'?'active':'');?>" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="table-vista.php">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">Table</span>
          </a>
        </li>
        
        <li class="nav-item <?php echo($pagina=='edit'?'active':'');?>" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="table-editar.php">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">Tabla editar(solo admins)</span>
          </a>
        </li>
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
          <a class="nav-link" href="https://github.com/FelicianoDuran">
            <i class="fa fa-fw fa-link"></i>
            <span class="nav-link-text">Github</span>
          </a>
        </li>
        
        <li class="nav-item <?php echo($pagina=='edit'?'active':'');?>" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="twitter.php">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">Twitter API en construct</span>
          </a>
        </li>
        
        
      </ul>
      <ul class="navbar-nav sidenav-toggler">

      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
            <a href="tables.php" class="nav-link" data-toggle="modal" data-target="#exampleModal">
          <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>
  </div>
 
 <?php } ?>