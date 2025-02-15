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
      <li><a href="infor.php">información</a></li> 
	  <li><a href="logon/">acceso y registro</a></li>
      <li><a href="addscore2.php" >insertar anuncio</a></li>
	  <li><a href="#" >buscar anuncios</a></li>
	  <li><a href="index.php" >inicio</a></li>

	</ul>
  </div>
  <div id="content">
	  <ul id="picturelist">
	  
	  <br/>
	  <br/>
	  <br/>
	  <br/>
	  
<li>
Los campos con (*) son obligatorios.
</li>

<br/>
<br/>
<br/>

<?php
  require_once('logon/startsession.php');
  require_once('appvars.php');
  require_once('connectvars.php');

  if (isset($_POST['submit'])) {
    // Grab the score data from the POST
	
	if (isset($_SESSION['user_id'])) {
			$user_id = $_SESSION['user_id'];
	}
	else {
		$user_id = 0;
	}
	
	$id_provincias = 0;
	
    $name = $_POST['name'];
    $score = $_POST['score'];
	
	$ciudad = $_POST['ciudad'];
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
	
	$screenshot = date("Ymdhis");
	
	//$screenshot = $_FILES['screenshot']['name'];

    $screenshot_type = $_FILES['screenshot']['type'];
    $screenshot_size = $_FILES['screenshot']['size']; 

    if (!empty ($ciudad) && !empty($descripcion) && !empty($screenshot) && !empty($name) && !empty($score)) {
      if ((($screenshot_type == 'image/gif' && $screenshot= $screenshot.".gif") || ($screenshot_type == 'image/jpeg' && $screenshot= $screenshot.".jpg") || ($screenshot_type == 'image/pjpeg' && $screenshot= $screenshot.".jpg") || ($screenshot_type == 'image/png' && $screenshot= $screenshot.".png"))
        && ($screenshot_size > 0) && ($screenshot_size <= GW_MAXFILESIZE)) {
		
        //if ($_FILES['screenshot']['error'] == 0) {
          // Move the file to the target upload folder
          //$target = GW_UPLOADPATH . $screenshot;
          //if (move_uploaded_file($_FILES['screenshot']['tmp_name'], $target)) {
		  
            // Connect to the database
            $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

            // Write the data to the database
            $query = "INSERT INTO guitarwars VALUES (0, NOW(), '$user_id', '$id_provincias', '$name', '$score', '$ciudad', '$provincia', '$categoria', 
			'$marca', '$modelo', '$cilindrada', '$kilometros', '$año', '$precio', '$descripcion', '$screenshot')";
			/*$query = "INSERT INTO guitarwars VALUES (0, NOW(), '$name', '$score', '$categoria', 
			'$marca', '$modelo', '$cilindrada', '$kilometros', '$precio', '$descripcion', '$screenshot')";*/
            mysqli_query($dbc, $query);

            // Confirm success with the user
            echo '<h2>¡Gracias por insertar su anuncio!</h2>';
            echo '<p><strong>Nombre:</strong> ' . $name . '<br />';
            echo '<strong>Teléfono:</strong> ' . $score . '<br />';
			
			echo '<strong>Ciudad:</strong> ' . $ciudad . '<br />';
			echo '<strong>Provincia:</strong> ' . $provincia . '<br />';
			
			echo '<strong>Categoría:</strong> ' . $categoria . '<br />';
			
			//echo '<strong>Marca:</strong> ' . $marca . '<br />';
			//echo '<strong>Modelo:</strong> ' . $modelo . '<br />';
			//echo '<strong>Cilindrada (cc):</strong> ' . $cilindrada . '<br />';
			//echo '<strong>Kilómetros:</strong> ' . $kilometros . '<br />';
			//echo '<strong>Año:</strong> ' . $año . '<br />';
			//echo '<strong>Precio (€):</strong> ' . $precio . '<br />';
			
			echo '<strong>Descripción:</strong> ' . $descripcion . '<br />';
			
            echo '<img src="' . GW_UPLOADPATH . $screenshot . '" width="600" height="450" alt="Score image" /></p>';
			
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
			$provincia ="";
			$categoria = "";
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
            //echo '<p class="error">Sorry, there was a problem uploading your screen shot image.</p>';
          //}
        //}
      }
      else {
        echo '<p class="error">The screen shot must be a GIF, JPEG, or PNG image file no greater than ' . (GW_MAXFILESIZE / 1024) . ' KB in size.</p>';
      }
      // Try to delete the temporary screen shot image file
      @unlink($_FILES['screenshot']['tmp_name']);
    }
    else {
      echo '<p class="error">Los campos con (*) son obligatorios.</p>';
    }
 }

?>

<form enctype="multipart/form-data" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">

    <input type="hidden" name="MAX_FILE_SIZE" value="<?php echo GW_MAXFILESIZE; ?>" />
    <label for="name">Nombre(*):</label>
    <input type="text" id="name" name="name" value="<?php if (!empty($name)) echo $name; ?>" /><br />
	
    <label for="score">Teléfono(*):</label>
    <input type="text" id="score" name="score" value="<?php if (!empty($score)) echo $score; ?>" /><br />
	
	<p/>

	<label for="provincia">Provincia(*):</label>
	<select name="provincia">

				<?php
				$dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
				$query = "select * from provincias order by nombre_provincias";
				$data = mysqli_query($dbc, $query);				
				while ($row = mysqli_fetch_array ($data)){
					echo "<option value=" . $row["nombre_provincias"] . ">" . $row["nombre_provincias"] . "</option>";	
					//echo "<option value=" . $row["id_provincias"] . ">" . $row["nombre_provincias"] . "</option>";	
				}	
					
				mysqli_free_result($data);	
				?>
	
	</select><br />
			
	<!--
	<label for="provincia">Provincia(*):</label>
    <select name="provincia">
	<option>Alava</option><option>Albacete</option><option>Almeria</option><option>Asturias</option><option>Avila</option>
	<option>Badajoz</option><option>Barcelona</option><option>Burgos</option><option>Caceres</option><option>Cadiz</option>
	<option>Cantabria</option><option>Castellon</option><option>Ceuta</option><option>Ciudad Real</option><option>Cordoba</option>
	<option>Cuenca</option><option>Gerona</option><option>Granada</option><option>Guadalajara</option><option>Guipuzcoa</option>
	<option>Huelva</option><option>Huesca</option><option>Islas Baleares</option><option>Jaen</option><option>La Coruña</option>
	<option>La Rioja</option><option>Las Palmas</option><option>Leon</option><option>Lerida</option><option>Lugo</option>
	<option>Madrid</option><option>Malaga</option><option>Melilla</option><option>Murcia</option><option>Navarra</option>
	<option>Orense</option><option>Palencia</option><option>Pontevedra</option><option>Salamanca</option><option>Santa Cruz de Tenerife</option>
	<option>Segovia</option><option>Sevilla</option><option>Soria</option><option>Tarragona</option><option>Teruel</option>
	<option>Toledo</option><option>Valencia</option><option>Valladolid</option><option>Vizcaya</option><option>Zamora</option>
	<option>Zaragoza</option>
	</select><br />
	<?php //$_POST["provincia"]; ?>
	-->
		
	<label for="ciudad">Localidad(*):</label>
	<input type="text" id="ciudad" name="ciudad" value="<?php if (!empty($ciudad)) echo $ciudad; ?>" /><br />
    
	<p/>
	
	<label for="categoria">Categoría(*):</label>
	<select name="categoria">
	<option>animales</option>
	<option>bicicletas</option>
	<option>coches</option>
	<option>empleo</option>
	<option>empresas</option>
	<option>inmobiliaria</option>
	<option>motos</option>
	<option>videojuegos</option>
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
	
	<label for="descripcion">Descripción(*):</label><br />
    <textarea id="descripcion" name="descripcion" rows="10" cols="50" 
	width="300" 
	style="family: Verdana; font-size: 85%; height: 85; font-family: Verdana; background-color: #FFFFFF; color: #000081; border: 1 solid #006699" 
	maxlength="2000" 
	size="200"
	><?php if (!empty($descripcion)) echo $descripcion; ?></textarea><br />
    
	
	<p/>
	
	<label for="screenshot">Foto(*):</label>
    <input type="file" id="screenshot" name="screenshot" />
    <br/>
	<p/>
	
	<input type="submit" value="Publicar anuncio" name="submit" />
	
	<p>(Peso máximo de la foto: 5 Mb.).<p/>
	
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