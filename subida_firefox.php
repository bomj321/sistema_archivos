<?php
require_once('conexion.php');
//RUTA IMAGEN
if (isset($_FILES['subir_archivo'])) {/*IF PARA VERIFICAR QUE EXISTE LA VARIABLE*/

  $usuario        = 'Empleado';
  $fecha          = date('Y-m-d');
 $nombre_archivo = $_FILES['subir_archivo']['name'];
 $nombre_archivo_count = count($nombre_archivo);
         for ($i = 0; $i < $nombre_archivo_count; $i++) {/*FOR*/
                    $nombre_archivo = $_FILES['subir_archivo']['name'];
                    $tipo_archivo   = $_FILES['subir_archivo']['type'];
                    $tamaño_archivo = $_FILES['subir_archivo']['size'];
                              // ruta del destino del servidor
                                $carpeta = $_SERVER['DOCUMENT_ROOT']. "/sistema_archivos/archivos/";
                                //mover imagen a directorio temporal
                                $tmp_name = $_FILES['subir_archivo']['tmp_name'];
                                move_uploaded_file($tmp_name[$i],$carpeta.$nombre_archivo[$i]);

                            //RUTA IMAGEN


                                mysqli_set_charset($connection, "utf8");
                                $sql="INSERT INTO archivos (nombre_archivo,usuario_archivo,fecha_subida) VALUES (?,?,?)";
                                $resultado=mysqli_prepare($connection, $sql);
                                mysqli_stmt_bind_param($resultado, "sss", $nombre_archivo[$i],$usuario,$fecha);
                                mysqli_stmt_execute($resultado);
                                mysqli_stmt_close($resultado);
                 }/*FOR*/

 }  /*IF PARA VERIFICAR QUE EXISTE LA VARIABLE*/
 ?>
