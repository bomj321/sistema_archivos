 <?php
      if ($_GET['archivo']) {

      $nombrearchivo= $_GET['archivo'];
      $archivo= $_SERVER['DOCUMENT_ROOT'].'/sistema_archivos/archivos/'.$nombrearchivo;
  /*CABECERAS QUE MEJORA LA DESCARGA Y EVITA QUE LA PAGINA CARGUE POR LA CACHE*/
      header("Content-Length: " . filesize ($archivo) );
      header ("Content-Type: application/octet-stream");
      header('Content-disposition: attachment; filename="'.basename($archivo));
      header('Expires: 0');
      header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
  /*CABECERAS QUE MEJORA LA DESCARGA Y EVITA QUE LA PAGINA CARGUE POR LA CACHE*/
      //$ext = pathinfo($archivo, PATHINFO_EXTENSION);
      //echo ($ext);
      //$archivo = preg_replace('"\.bmp$"', '.jpg', $archivo);
      $filepath = readfile($archivo); //CODIGO PARA NO TENER PROBLEMAS POR EL TAMANO DEL FICHERO
      }

 ?>
