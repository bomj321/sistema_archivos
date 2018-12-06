<?php 
require_once('conexion.php');
if ($_GET['archivo']) {
      $idarchivo= $_GET['archivo'];
       mysqli_set_charset($connection, "utf8");
       $sql="DELETE FROM archivos WHERE id_archivo=?";
       $resultado=mysqli_prepare($connection, $sql);
       mysqli_stmt_bind_param($resultado, "i",$idarchivo);
       mysqli_stmt_execute($resultado);         
       mysqli_stmt_close($resultado);


        echo "
                  <script>
                window.location.href='index.php';
                </script>
        ";

	
}

 ?>