<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Anuncios gratis</title>
  
	<link rel="stylesheet" type="text/css" href="/buscar/stylesearch.css" />
	<link rel="stylesheet" type="text/css" href="style.css" />
	<link href="images/main.css" rel="stylesheet" type="text/css" />
  
</head>
<body>

<div id="logo">
		
	  		<a href="index.php"><img src="images/xbg1.jpg" width="600" height="150" alt=""/></a>
		
</div>	

<div id ="container">
  <div id = "navdiv">
    <ul class = "mainlinks">
      <li><a href="/infor.php">información</a></li> 
	  <li><a href="/logon/">mis anuncios</a></li>
      <li><a href="/addscore.php" >publicar anuncios</a></li>
	  <li><a href="/buscar/search.html" >buscar anuncios</a></li>
	  <li><a href="/index.php" >inicio</a></li>

	</ul>
  </div>
  <div id="content">
	  <ul id="picturelist">
	  
	  <br/>
	  <br/>
	  <br/>
	  <br/>

<!--
<p>Recomendamos: Google Chrome, Firefox, Safari, Explorer de Windows 7 o superior.<p/>

<p>Los campos con (*) son obligatorios.<p/>
-->

<?php
  require_once('logon/startsession.php');
  require_once('appvars.php');
  require_once('connectvars.php');

  $provincia="Alava";
  $categoria="actos y eventos";
  
echo '<p class="aviso">Recomendamos para subir los anuncios: Google Chrome, Firefox, Safari, Explorer de Windows 7 o superior.</p>';

echo '<p>Los campos con (*) son obligatorios.</p>';

if (isset($_SESSION['user_id'])) {	
	$user_id = $_SESSION['user_id'];
	echo '<p class="noerror">Sesión iniciada. Usuario: (' . $_SESSION['username'] . ').</p>';
	
  if (isset($_POST['submit'])) {
    // Grab the score data from the POST
	
	//if (isset($_SESSION['user_id'])) {
		//$user_id = $_SESSION['user_id'];
	//}
	//else {
		//$user_id = 0;
	//}
	
	$id_provincias = 0;
	
    $name = $_POST['descripcion'];
	$score = $_POST['score'];
	
	if ((preg_match("/^\(?[2-9]\d{8}\)*$/", $score)))
	//(!preg_match("/^[a-zA-Z ]*$/",$name))
	//(preg_match('/^\(?[2-9]\d{2}\)?[-\s]\d{3}-\d{3}$/', $score))
	{
    $score = $_POST['score'];
	}
	else
	{
	$score = "SN";
	}
	
	$ciudad = "";
	//$ciudad = $_POST['ciudad'];
	$provincia = $_POST['provincia'];
	
	//$ciudad = "Pilas";
	//$provincia = "Sevilla";
	
	$categoria = $_POST['categoria'];
	
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
		
	//$screenshot = date("Ymdhis");
			
	//$screenshot = $_FILES['screenshot']['name'];

    //$screenshot_type = $_FILES['screenshot']['type'];
    //$screenshot_size = $_FILES['screenshot']['size']; 
	
    if (!empty($name) && !empty($descripcion) /*&& !empty ($ciudad) && !empty($screenshot) && !empty($score) && (preg_match('/^\(?[2-9]\d{2}\)?[-\s]\d{3}-\d{3}$/', $score))*/ ) 
	{
      //if ((($screenshot_type == 'image/gif' && $screenshot= $screenshot.".gif") || ($screenshot_type == 'image/jpeg' && $screenshot= $screenshot.".jpg") || ($screenshot_type == 'image/pjpeg' && $screenshot= $screenshot.".jpg") || ($screenshot_type == 'image/png' && $screenshot= $screenshot.".png"))
      //  /*&& ($screenshot_size > 0) && ($screenshot_size <= GW_MAXFILESIZE)*/) 
		
		//{
		
		//if (file_exists('images/'.$screenshot)) {
		
        //if ($_FILES['screenshot']['error'] == 0) {
          // Move the file to the target upload folder
          //$target = GW_UPLOADPATH . $screenshot;
          //if (move_uploaded_file($_FILES['screenshot']['tmp_name'], $target)) {
		  
            // Connect to the database
            $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

            // Write the data to the database
            $query = "INSERT INTO guitarwars VALUES (0, NOW(), '$user_id', '$id_provincias', '$name', '$score', '$ciudad', '$provincia', '$categoria', 
			'$marca', '$modelo', '$cilindrada', '$kilometros', '$año', '$precio', '$descripcion', '$screenshot', '$screenshot2', '$screenshot3')";
			/*$query = "INSERT INTO guitarwars VALUES (0, NOW(), '$name', '$score', '$categoria', 
			'$marca', '$modelo', '$cilindrada', '$kilometros', '$precio', '$descripcion', '$screenshot')";*/
            mysqli_query($dbc, $query);

            // Confirm success with the user
            echo '<h2>¡Gracias por insertar su anuncio!</h2>';
            //echo '<p><strong>Nombre/Título:</strong> ' . $name . '<br />';
            echo '<strong>Teléfono:</strong> ' . $score . '<br />';
			
			//echo '<strong>Ciudad:</strong> ' . $ciudad . '<br />';
			echo '<strong>Provincia:</strong> ' . $provincia . '<br />';
			
			echo '<strong>Categoría:</strong> ' . $categoria . '<br />';
			
			//echo '<strong>Marca:</strong> ' . $marca . '<br />';
			//echo '<strong>Modelo:</strong> ' . $modelo . '<br />';
			//echo '<strong>Cilindrada (cc):</strong> ' . $cilindrada . '<br />';
			//echo '<strong>Kilómetros:</strong> ' . $kilometros . '<br />';
			//echo '<strong>Año:</strong> ' . $año . '<br />';
			//echo '<strong>Precio (€):</strong> ' . $precio . '<br />';
			
			echo '<strong>Descripción:</strong> ' . $descripcion . '<br />';
			
		if (is_file(GW_UPLOADPATH . $screenshot) && filesize(GW_UPLOADPATH . $screenshot) > 0) {
		        
			//echo '<td><li><a href="images/'.$row['screenshot'].'"><img src="' . GW_UPLOADPATH . $row['screenshot'] . '" width="400px" height="350px" alt="Score image" /></a></li></td></tr>';	  
			echo '<img src="' . GW_UPLOADPATH . $screenshot . '" width="400px" height="350px" alt="Score image" /></p>';

			}
			else {
			echo '<img src="' . GW_UPLOADPATH . 'unverified.gif' . '" width="400" height="350" alt="Unverified score" /></p>';
			}
			
		if (is_file(GW_UPLOADPATH . $screenshot2) && filesize(GW_UPLOADPATH . $screenshot2) > 0) {
		        
			//echo '<td><li><a href="images/'.$row['screenshot'].'"><img src="' . GW_UPLOADPATH . $row['screenshot'] . '" width="200px" height="150px" alt="Score image" /></a></li></td></tr>';	  
			echo '<img src="' . GW_UPLOADPATH . $screenshot2 . '" width="200px" height="150px" alt="Score image" /></p>';

			}
			else {
			echo '<img src="' . GW_UPLOADPATH . 'unverified.gif' . '" width="200" height="150" alt="Unverified score" /></p>';
			}

		if (is_file(GW_UPLOADPATH . $screenshot3) && filesize(GW_UPLOADPATH . $screenshot3) > 0) {
		        
			//echo '<td><li><a href="images/'.$row['screenshot'].'"><img src="' . GW_UPLOADPATH . $row['screenshot'] . '" width="200px" height="150px" alt="Score image" /></a></li></td></tr>';	  
			echo '<img src="' . GW_UPLOADPATH . $screenshot3 . '" width="200px" height="150px" alt="Score image" /></p>';

			}
			else {
			echo '<img src="' . GW_UPLOADPATH . 'unverified.gif' . '" width="200" height="150" alt="Unverified score" /></p>';
			}
			
            //echo '<img src="' . GW_UPLOADPATH . $screenshot . '" width="600" height="450" alt="Score image" /></p>';
			
			echo '<p>';
            echo '<p><a href="index.php">&lt;&lt; Ir a la página principal.</a></p>';
			echo '<h2>¡Gracias por publicar su anuncio!, puede poner otro en el siguiente formulario o volver a la página principal.</h2>';
			echo '<p><a href="index.php">&lt;&lt; Ir a la página principal.</a></p>';
			echo '<p>Los campos con (*) son obligatorios.</p>';
			echo '<p>';
			
            // Clear the score data to clear the form
            $name = "";
            $score = "";
			
			$ciudad = "";
			//$provincia ="";
			//$categoria = "";
				//$provincia="Alava";
				//$categoria="actos y eventos";
			$marca = "";
			$modelo = "";
			$cilindrada = "";
			$kilometros = "";
			$precio = "";
			$año = "";
			$descripcion = "";
			
            $screenshot = "";

            mysqli_close($dbc);
          //}
          //else {
            //echo '<p class="error">Sorry, there was a problem uploading your screen shot image. Posiblemente el navegador que usas no es compatible.</p>';
          //}
        //}
		  //}
          //else {
            //echo '<p class="error">Sorry, there was a problem uploading your screen shot image. Posiblemente el navegador que usas no es compatible.</p>';
          //}
      //}
      //else {
        //echo '<p class="error">La imagen debe ser GIF, JPEG, o PNG no mayor de ' . (GW_MAXFILESIZE / 1024) . ' KB, si esto está bien, posiblemente el navegador que usas no es compatible.</p>';
      //}
      // Try to delete the temporary screen shot image file
      //@unlink($_FILES['screenshot']['tmp_name']);
    }
    else {
      echo '<p class="error">Por favor, comprueba que los campos con (*) estén editados.</p>';
    }
 }
 
 }
else {
	$user_id = 0;
	echo '<p class="error">NO PUEDES PUBLICAR ANUNCIOS, sesión no iniciada, para iniciar sesión o registrarte ve a la pestaña: mis anuncios.</p>';
	//echo '<p class="error">Si te registras e inicias sesión podrás eliminar, modificar y renovar tus anuncios.</p>';
	//echo '<p class="error">Para ello pincha en la pestaña: mis anuncios.</p>';
}

?>

<form enctype="multipart/form-data" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">

    <!--<input type="hidden" name="MAX_FILE_SIZE" value="<?php //echo GW_MAXFILESIZE; ?>" />-->
	
	<input type="hidden" name="MAX_FILE_SIZE" value="5242880" />
	
	<input type="hidden" name="nombre_eliminar" value="<?php echo date("Ymdhis"); ?>" />
	
	<!--
    <label for="name">(*) Nombre/Título:</label>
    <input type="text" id="name" name="name" size="32" maxlength="32" value="<?php if (!empty($name)) echo $name; ?>" /><br />
	
	<p/>
	-->
	
	<label for="descripcion">(*) Descripción del anuncio:</label><br /> 
	<textarea id="descripcion" name="descripcion" rows="10" cols="60" 
	width="300" 
	style="family: Verdana; font-size: 85%; height: 85; font-family: Verdana; background-color: #FFFFFF; color: #000081; border: 1 solid #006699" 
	maxlength="2000" 
	size="200"
	><?php if (!empty($descripcion)) echo $descripcion; ?></textarea><br />
    
	<p>(Incluye: precio, teléfono, e-mail, facebook, web, nombre, localidad, etc.)<p/>	
	
    <label for="score">Teléfono:</label>
    <input type="text" id="score" name="score" size="9" maxlength="9" value="<?php if (!empty($score)) echo $score; ?>" /><br />

	<!--
	<p>(Si no pones el teléfono o no es válido, le asignaremos " SN ".)<p/>
	-->

	<p/>
	
<!--
	<label for="provincia">Provincia(*):</label>
	<select name="provincia">

				<?php
				//$dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
				//$query = "select * from provincias order by nombre_provincias";
				//$data = mysqli_query($dbc, $query);				
				//while ($row = mysqli_fetch_array ($data)){
					//echo "<option value=" . $row["nombre_provincias"] . ">" . $row["nombre_provincias"] . "</option>";	
					//echo "<option value=" . $row["id_provincias"] . ">" . $row["nombre_provincias"] . "</option>";	
				//}	
					
				//mysqli_free_result($data);	
				?>
	
	</select><br />
-->			
	
	<label for="provincia">Provincia:</label>
    <select name="provincia">
	
	<?php echo '<option>' . $provincia . '</option>'; ?>
	<option>Alava</option>
	<option>Albacete</option>
	<option>Alicante</option>
	<option>Almeria</option>
	<option>Asturias</option>
	<option>Avila</option>
	<option>Badajoz</option>
	<option>Baleares</option>
	<option>Barcelona</option>
	<option>Burgos</option>
	<option>Caceres</option>
	<option>Cadiz</option>
	<option>Cantabria</option>
	<option>Castellon</option>
	<option>Ceuta</option>
	<option>Ciudad Real</option>
	<option>Cordoba</option>
	<option>Cuenca</option>
	<option>Gerona</option>
	<option>Granada</option>
	<option>Guadalajara</option>
	<option>Guipuzcoa</option>
	<option>Huelva</option>
	<option>Huesca</option>
	<option>Jaen</option>
	<option>La Coruña</option>
	<option>La Rioja</option>
	<option>Las Palmas</option>
	<option>Leon</option>
	<option>Lerida</option>
	<option>Lugo</option>
	<option>Madrid</option>
	<option>Malaga</option>
	<option>Melilla</option>
	<option>Murcia</option>
	<option>Navarra</option>
	<option>Orense</option>
	<option>Palencia</option>
	<option>Pontevedra</option>
	<option>Salamanca</option>
	<option>Segovia</option>
	<option>Sevilla</option>
	<option>Soria</option>
	<option>Tarragona</option>
	<option>Tenerife</option>
	<option>Teruel</option>
	<option>Toledo</option>
	<option>Valencia</option>
	<option>Valladolid</option>
	<option>Vizcaya</option>
	<option>Zamora</option>
	<option>Zaragoza</option>
	
	</select><br />
	
	<?php //$_POST["provincia"]; ?>
	
	<p/>
	
	<!--
	<label for="ciudad">Localidad(*):</label>
	<input type="text" id="ciudad" name="ciudad" size="32" maxlength="32" value="<?php //if (!empty($ciudad)) echo $ciudad; ?>" /><br />
    
	<p/>
	-->
	
	<label for="categoria">Categoría:</label>
	<select name="categoria">
	
	<?php echo '<option>' . $categoria . '</option>'; ?>
	<option>actos y eventos</option>
	<option>aficiones y ocio</option>
	<option>agricultura</option>
	<option>animales</option>
	<option>asociaciones</option>
	<option>bicicletas</option>
	<option>casa y jardin</option>
	<option>caza y pesca</option>
	<option>coleccionismo</option>
	<option>comics y tebeos</option>
	<option>deportes</option>
	<option>electrodomesticos</option>
	<option>empleo_demandas</option>
	<option>empleo_ofertas</option>
	<option>empresas</option>
	<option>formacion</option>
	<option>hosteleria y turismo</option>
	<option>imagen y sonido</option>
	<option>informatica</option>
	<option>inmobiliaria_alquiler</option>
	<option>inmobiliaria_ventas</option>
	<option>juegos</option>
	<option>juegos_juguetes</option>
	<option>juegos_videojuegos</option>
	<option>libros</option>
	<option>maquinaria y aperos</option>
	<option>moda y complementos</option>
	<option>motor</option>
	<option>motor_camiones</option>
	<option>motor_coches</option>
	<option>motor_motos</option>
	<option>motor_todoterrenos</option>
	<option>motor_tractores</option>
	<option>motor_vehiculos industriales</option>
	<option>profesionales</option>
	<option>salud</option>
	<option>salud_belleza</option>
	<option>servicios</option>
	<option>telefonia</option>
	<option>otras</option>
	
	</select><br />
	
	<?php //$_POST["categoria"]; ?>
	
	<!--
	<p>Si se trata de un vehículo:<p/>
	
	<label for="marca">Marca:</label>
    <input type="text" id="marca" name="marca" value="<?php //if (!empty($marca)) echo $marca; ?>" /><br />
	
	<label for="modelo">Modelo:</label>
    <input type="text" id="modelo" name="modelo" value="<?php //if (!empty($modelo)) echo $modelo; ?>" /><br />	
	
	<label for="cilindrada">Cilindrada (cc):</label>
    <input type="text" id="cilindrada" name="cilindrada" value="<?php //if (!empty($cilindrada)) echo $cilindrada; ?>" /><br />
	
	<label for="kilometros">kilómetros:</label>
    <input type="text" id="kilometros" name="kilometros" value="<?php //if (!empty($kilometros)) echo $kilometros; ?>" /><br />

	<label for="precio">Precio (€):</label>
    <input type="text" id="precio" name="precio" value="<?php //if (!empty($precio)) echo $precio; ?>" /><br />
	-->
	
	<p/>
		
	<label for="screenshot">Foto1 (foto principal):</label>
    <input type="file" id="screenshot" name="screenshot" />
	
	<p/>
		
	<label for="screenshot2">Foto2:</label>
    <input type="file" id="screenshot2" name="screenshot2" />
	
	<p/>
		
	<label for="screenshot3">Foto3:</label>
    <input type="file" id="screenshot3" name="screenshot3" />
		
	<!--
    <br/>
	<p/>
	-->
	
	<input type="submit" value="PUBLICAR ANUNCIO" name="submit" />
	
	<p>(Peso máximo de cada foto: 5 Mb.)<p/>
	
	<p>
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