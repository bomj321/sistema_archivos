<?php
session_start();

	if (isset($_POST['clave']) AND !empty($_POST['clave'])) {
			if ($_POST['clave']=='Maracaibo02') {
					$_SESSION['desbloqueo'] = 'desbloqueado';
					$_SESSION['tiempo'] = time();
			}else{
				echo '<script type="text/javascript">alert("Clave Incorrecta!!!");</script>';
			}

	}

if(isset($_SESSION['tiempo']) ) {
		$inactivo = 600;
		 $vida_session = time() - $_SESSION['tiempo'];
		 if($vida_session > $inactivo)
			 {
				 session_destroy();
				 header("Location: index.php");
			 }
	 }

$_SESSION['tiempo'] = time();


?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Sistema de Subida de Archivos</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
</head>
<body>
<!---->
<!--VARIABLE DE SESSION-->

<!--VARIABLE DE SESSION-->
<?php
include('conexion.php');
 $sql_archivos = "SELECT * FROM archivos order by id_archivo DESC";
 $resultado_archivos= mysqli_query($connection, $sql_archivos);
 ?>
<!---->
<div class="container"><!--DIV PARA EL CONTAINER-->

<!--TITULO-->
	<div class="row" style="margin-top: 50px;">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"><center><h2>Optimizaci&oacute;n de Producci&oacute;n</h2></center></div>
		<?php if (!isset($_SESSION['desbloqueo']) AND empty($_SESSION['desbloqueo'])): ?>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
						<center><button class="btn btn-danger" id='mostrar_botones' data-toggle="modal" data-target="#exampleModal">Sistema bloqueado</button></center>
					</div>

				<?php else: ?>
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
							<center><button class="btn btn-success">Sistema Desbloqueado</button></center>
						</div>

						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
							<a class='btn'  style='background-color: #cdd0d6' href="cerrar.php">Cerrar Sesi&oacute;n</a>
						</div>


		<?php endif; ?>
	</div>
<!--TITULO-->

<!--FORMULARIO-->
<?php if ( isset($_SESSION['desbloqueo']) AND !empty($_SESSION['desbloqueo'])): ?>
		<div class="row" style="margin-top: 50px; border: 1px solid black; padding-top: 15px; height: 150px;" id="gif_carga">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<form  style='padding-top: 2.5rem;' id="form_nuevo_archivo" method="POST" enctype="multipart/form-data" onsubmit="enviarNuevoArchivo(); return false">
				 	 <div class="form-group row">
		   				 <label for="subir_archivo" class="col-lg-2 col-md-2 col-sm-2 col-xs-12 col-form-label">Subir Archivo</label>
					    <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
					      <input required type="file" class="form-control" id="subir_archivo" name="subir_archivo[]" multiple>
					    </div>

					    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
					 				<button type="submit" class="btn btn-primary" >Enviar Archivo</button>
					    </div>
	  				</div>

				</form>
			</div>
		</div>
 <?php endif ?>

<!--FORMULARIO-->

<!--TABLA-->
<div class="row" style="margin-top: 50px; border: 1px solid black; padding-top: 30px;">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 display nowrap dataTable dtr-inline collapsed">
		<table width="100%" id="myTable" data-order=''>
				<thead>
					<tr>
						<th>Nombre del Archivo</th>
						<th>Usuario</th>
						<th>Fecha</th>
						<th>Acciones</th>
					</tr>
				</thead>
				<tbody>
			<?php
			 while($fila_archivo=mysqli_fetch_array($resultado_archivos))
                    {
              ?>
					<tr>
						<td><?php echo $fila_archivo['nombre_archivo'];?></td>
						<td><?php echo $fila_archivo['usuario_archivo'];?></td>
<!--FORMATEO DE FECHA-->
<?php
$fecha_bbdd = $fila_archivo['fecha_subida'];
$newDate = date("d-m-Y", strtotime($fecha_bbdd));
 ?>
<!--FORMATEO DE FECHA-->
						<td><?php echo $newDate;?></td>
						<td>
							<?php if ( isset($_SESSION['desbloqueo']) AND !empty($_SESSION['desbloqueo'])): ?>
								<a href="eliminar.php?archivo=<?php echo $fila_archivo['id_archivo']?>" class="btn btn-warning btn-desbloqueo" >Eliminar</a>
							<?php endif ?>
								<a href="descarga.php?archivo=<?php echo $fila_archivo['nombre_archivo']?>" class="btn btn-primary" target="_blank">Descargar</a>
			 	</td>
					</tr>

			<?php
			        }
			 ?>


				</tbody>
	</table>
	</div>
</div>
<!--TABLA-->

<div class="row">
	<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Desbloquear Sistema</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="post" action="index.php" autocomplete="off">
				  <div class="form-group">
				    <label for="clave">Ingrese Clave</label>
				   <!-- <input type="text" class="form-control" id="clave" placeholder="Ingrese CLave">-->
						<input required type="text" class="form-control" name="clave" placeholder="Ingrese CLave">

				  </div>
				  <button type="submit" class="btn btn-primary">Enviar Clave</button>
	   </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>
</div>




</div><!--DIV PARA EL CONTAINER-->













<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="http://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap4.min.js"></script>
<script src="app.js"></script>

</body>
</html>
