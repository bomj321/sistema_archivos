<?php
error_reporting(0);
session_start();

	if (isset($_POST['clave']) AND !empty($_POST['clave'])) {
			if ($_POST['clave']=='Maracaibo02') {
					$_SESSION['desbloqueo'] = 'desbloqueado';
					$_SESSION['tiempo'] = time();
			echo "<meta http-equiv='refresh' content='0'>"; // LIMPIA LA PAGINA Y NO GUARDA DATOS DE FORMULARIOS
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

<!--CONDICIONAL QUE DEPENDE DE LOS NAVEGADORES-->
<?php $user_agent = $_SERVER['HTTP_USER_AGENT'];
if (strpos($user_agent, 'Chrome') !== FALSE) {
	include 'principal_chrome.php';
}else{
	include 'principal_firefox.php';

}

?>
<!--FUNCION DETECTA NAVEGADORES-->
