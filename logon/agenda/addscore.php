<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Anuncios gratis</title>
  
	<link rel="stylesheet" type="text/css" href="/buscar/stylesearch.css" />
	<link rel="stylesheet" type="text/css" href="/style.css" />
	<link href="/images/main.css" rel="stylesheet" type="text/css" />
  
</head>
<body>

<div id="logo">
		
	  		<a href="index.php"><img src="/images/xbg1.jpg" width="600" height="150" alt=""/></a>
		
</div>	

<div id ="container">
  <div id = "navdiv">
    <ul class = "mainlinks">
	
	  <li><a href="/logon/agenda/">mis tareas</a></li>
      <li><a href="/infor.php">información</a></li> 
	  <li><a href="/index.php" >inicio</a></li>
	
	</ul>
  </div>
  <div id="content">
	  <ul id="picturelist">
	  
	  <br/>
	  <br/>
	  <br/>
	  <br/>

<?php
  require_once('startsession.php');
  require_once('appvars.php');
  require_once('connectvars.php');

  $provincia="Alava";
  $categoria="actos y eventos";
  
echo '<p class="aviso">Recomendamos para subir las tareas: Google Chrome, Firefox, Safari, Explorer de Windows 7 o superior.</p>';

echo '<p>Los campos con (*) son obligatorios.</p>';

if (isset($_SESSION['user_id'])) {	
	$user_id = $_SESSION['user_id'];
	echo '<p class="noerror">Sesión iniciada. Usuario: (' . $_SESSION['username'] . ').</p>';
	
  if (isset($_POST['submit'])) {
 	
	$id_provincias = 0;
	
    $name = $_POST['descripcion'];
	$score = "";
	
	if ((preg_match("/^\(?[2-9]\d{8}\)*$/", $score)))
	{
    $score = $_POST['score'];
	}
	else
	{
	$score = "";
	}
	
	$ciudad = "";
	
	$provincia = "";

	$categoria = "";
	
	$marca = "";
	$modelo = "";
	$cilindrada = "";
	$kilometros = "";
	$precio = "";
	$año = "";
	
	$descripcion = $_POST['descripcion'];
	
	include_once("class_imgUpldr.php"); 
	$ima = new imgUpldr;
	// Inicializamos
	$ima->init($_FILES['screenshot']);

	$screenshot = $_POST["nombre_eliminar"];
	
	include_once("class_imgUpldrb.php"); 
	$ima = new imgUpldrb;
	// Inicializamos
	$ima->init($_FILES['screenshot2']);
	
	$screenshot2 = $_POST["nombre_eliminar"]."b";
	
	include_once("class_imgUpldrc.php"); 
	$ima = new imgUpldrc;
	// Inicializamos
	$ima->init($_FILES['screenshot3']);
	
	$screenshot3 = $_POST["nombre_eliminar"]."c";
			
    if (!empty($name) && !empty($descripcion)) 
	{
		  
            // Connect to the database
            $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

            // Write the data to the database
            $query = "INSERT INTO agenda VALUES (0, NOW(), '$user_id', '$id_provincias', '$name', '$score', '$ciudad', '$provincia', '$categoria', 
			'$marca', '$modelo', '$cilindrada', '$kilometros', '$año', '$precio', '$descripcion', '$screenshot', '$screenshot2', '$screenshot3')";

            mysqli_query($dbc, $query);

            // Confirm success with the user
            echo '<h2>¡Gracias por insertar su tarea!</h2>';
            			
			echo '<strong>Descripción:</strong> ' . $descripcion . '<br />';
			
		if (is_file(GW_UPLOADPATH . $screenshot) && filesize(GW_UPLOADPATH . $screenshot) > 0) {
		        
			
			echo '<img src="' . GW_UPLOADPATH . $screenshot . '" width="400px" height="350px" alt="Score image" /></p>';

			}
			
		if (is_file(GW_UPLOADPATH . $screenshot2) && filesize(GW_UPLOADPATH . $screenshot2) > 0) {
		        
				  
			echo '<img src="' . GW_UPLOADPATH . $screenshot2 . '" width="200px" height="150px" alt="Score image" /></p>';

			}

		if (is_file(GW_UPLOADPATH . $screenshot3) && filesize(GW_UPLOADPATH . $screenshot3) > 0) {
		        
			
			echo '<img src="' . GW_UPLOADPATH . $screenshot3 . '" width="200px" height="150px" alt="Score image" /></p>';

			}

			echo '<p>';
            echo '<p><a href="index.php">&lt;&lt; Ir al menú de mis tareas.</a></p>';
			echo '<h2>¡Gracias por publicar su tarea!, puede poner otra en el siguiente formulario o volver al menú de mis tareas.</h2>';
			echo '<p><a href="index.php">&lt;&lt; Ir al menú de mis tareas.</a></p>';
			echo '<p>Los campos con (*) son obligatorios.</p>';
			echo '<p>';
			
            // Clear the score data to clear the form
            $name = "";
            $score = "";
			
			$ciudad = "";
			
			$marca = "";
			$modelo = "";
			$cilindrada = "";
			$kilometros = "";
			$precio = "";
			$año = "";
			$descripcion = "";
			
            $screenshot = "";

            mysqli_close($dbc);

    }
    else {
      echo '<p class="error">Por favor, comprueba que los campos con (*) estén editados.</p>';
    }
 }
 
 }
else {
	$user_id = 0;
	echo '<p class="error">NO PUEDES PUBLICAR TAREAS, sesión no iniciada o caducada, para iniciar sesión o registrarte ve a la pestaña: mis anuncios.</p>';

}

?>

<form enctype="multipart/form-data" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">

	<input type="hidden" name="MAX_FILE_SIZE" value="5242880" />
	
	<input type="hidden" name="nombre_eliminar" value="<?php echo date("Ymdhis"); ?>" />
	
	<label for="descripcion">(*) Descripción de la tarea (No están permitidas las comillas " ni ' ) :</label><br /> 
	<textarea id="descripcion" name="descripcion" rows="5" cols="60" 
	width="300" 
	style="family: Verdana; font-size: 85%; height: 85; font-family: Verdana; background-color: #FFFFFF; color: #000081; border: 1 solid #006699" 
	maxlength="2000" 
	size="200"
	><?php if (!empty($descripcion)) echo $descripcion; ?></textarea><br />
    
	<p/>
	
	<input type="submit" value="PUBLICAR TAREA" name="submit" />
	
	<p>
	<p />
	
 </form>
		 
<?php

	include ("pie.php");
	
?>

	</ul>
	</div>
</div>

</body>
</html>