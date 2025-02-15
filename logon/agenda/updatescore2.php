<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Anuncios Gratis</title>
  <link rel="stylesheet" type="text/css" href="style.css" />
	
  <link rel="stylesheet" type="text/css" href="/style.css" />
  <link rel="stylesheet" type="text/css" href="/buscar/stylesearch.css" />
  <link href="/images/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <h2>Anuncios Gratis - Modificar y Actualizar Tareas</h2>

<?php
  require_once('appvars.php');
  require_once('connectvars.php');

  if (isset($_GET['id']) && isset($_GET['date']) && isset($_GET['name']) && isset($_GET['score']) && isset($_GET['screenshot']) && isset($_GET['screenshot2']) && isset($_GET['screenshot3'])) {
    // Grab the score data from the GET
    $id = $_GET['id'];
    $date = $_GET['date'];
    $name = $_GET['name'];
	$descripcion = $_GET['descripcion'];
    $score = $_GET['score'];
	$provincia = $_GET['provincia'];
	$categoria = $_GET['categoria'];
    $screenshot = $_GET['screenshot'];
	$screenshot2 = $_GET['screenshot2'];
	$screenshot3 = $_GET['screenshot3'];
		
  }
  
  else if (isset($_POST['id']) && isset($_POST['name'])) {
    // Grab the score data from the POST
    $id = $_POST['id'];
    $name = $_POST['name'];
	$descripcion = $_POST['descripcion'];
    $score = $_POST['score'];
	$provincia = $_POST['provincia'];
	$categoria = $_POST['categoria'];
	
	$screenshot = $_POST['screenshot'];

	
	$screenshot2 = $_POST['screenshot2'];

	
	$screenshot3 = $_POST['screenshot3'];

	
  }
  else {
    echo '<p class="error">Este registro no se puede eliminar o editar, contiene carácteres no permitidos.</p>';
  }

  if (isset($_POST['submit'])) {
	  

	 
    if ($_POST['confirm'] == 'Si') {

	  
include_once("class_imgUpldr.php"); 
	$ima = new imgUpldr;
	// Inicializamos
	$ima->init($_FILES['screenshotf']);
		
	$screenshotf = $_POST["nombre_eliminar"];
	
	if (is_file(GW_UPLOADPATH . $screenshotf) && filesize(GW_UPLOADPATH . $screenshotf) > 0)   
	{
			
		$myFile = GW_UPLOADPATH . $screenshot; 
		unlink($myFile); 
		//echo $myFile;
			
		$screenshot = $screenshotf;
			
	}
	else
	{
		$screenshot = $screenshot;
	}
	
include_once("class_imgUpldrb.php"); 
	$ima = new imgUpldrb;
	// Inicializamos
	$ima->init($_FILES['screenshot2f']);
		
	$screenshot2f = $_POST["nombre_eliminar"] . "b";
	
	if (is_file(GW_UPLOADPATH . $screenshot2f) && filesize(GW_UPLOADPATH . $screenshot2f) > 0)   
	{
			
		$myFile = GW_UPLOADPATH . $screenshot2; 
		unlink($myFile); 
		//echo $myFile;
			
		$screenshot2 = $screenshot2f;
			
	}
	else
	{
		$screenshot2 = $screenshot2;
	}
	
include_once("class_imgUpldrc.php"); 
	$ima = new imgUpldrc;
	// Inicializamos
	$ima->init($_FILES['screenshot3f']);
		
	$screenshot3f = $_POST["nombre_eliminar"] . "c";
	
	if (is_file(GW_UPLOADPATH . $screenshot3f) && filesize(GW_UPLOADPATH . $screenshot3f) > 0)   
	{
			
		$myFile = GW_UPLOADPATH . $screenshot3; 
		unlink($myFile); 
		//echo $myFile;
			
		$screenshot3 = $screenshot3f;
			
	}
	else
	{
		$screenshot3 = $screenshot3;
	}
	  
      // Connect to the database
      $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME); 

      // Delete the score data from the database
      //$query = "DELETE FROM agenda WHERE id = $id LIMIT 1";
	  $query = "UPDATE agenda set date = now(), name = '$name', descripcion = '$descripcion', score = '$score', provincia = '$provincia', categoria = '$categoria', screenshot = '$screenshot', screenshot2 = '$screenshot2', screenshot3 = '$screenshot3' WHERE id = '$id' limit 1";
      mysqli_query($dbc, $query);
      mysqli_close($dbc);

      // Confirm success with the user
	  //echo '</p>';
	  //echo $screenshotf;
	  //echo '</p>';
	  //echo $screenshot;
      echo '<p>La tarea: ' . $name . ', se ha actualizado.';
    }
    else {
      echo '<p class="error">La tarea no se ha actualizado.</p>';
    }
  
  }
  
  else if (isset($id) && isset($name) && isset($date) && isset($score)) {
    echo '<p>Está seguro de que quiere actualizar la tarea?</p>';
    echo '<p><strong>Título: </strong>' . $name . '<br /><strong>Fecha: </strong>' . $date .
      '<br /><strong>Teléfono: </strong>' . $score . '</p>';
    echo '<form enctype="multipart/form-data" method="post" action="updatescore2.php">';
    echo '<input type="hidden" name="id" value="' . $id . '" />';
	
	echo '<input type="hidden" name="MAX_FILE_SIZE" value="5242880" />';
	echo '<input type="hidden" name="nombre_eliminar" value="' . date("Ymdhis") . '" />';
	
    echo '<label for="name">Título:</label> 
	<input type="text" id="name" name="name" size="32" maxlength="32" value="' . $name . '" /><br />';
	echo '</p>';
    echo '<label for="descripcion">Descripción:</label><br />
    <textarea id="descripcion" name="descripcion" rows="5" cols="60" 
	width="300" 
	style="family: Verdana; font-size: 85%; height: 85; font-family: Verdana; background-color: #FFFFFF; color: #000081; border: 1 solid #006699" 
	maxlength="2000" 
	size="200"
	>' . $descripcion . '</textarea><br /> ';
	echo '</p>';

	echo '</p>';

	echo '</p>';

	echo '</p>';
	
if (is_file(GW_UPLOADPATH . $screenshot) && filesize(GW_UPLOADPATH . $screenshot) > 0) {
		        
		//echo '<td><li><a href="images/'.$row['screenshot'].'"><img src="' . GW_UPLOADPATH . $row['screenshot'] . '" width="400px" height="350px" alt="Score image" /></a></li></td></tr>';	  
		echo '<td>Foto1: <img border=1 src="' . GW_UPLOADPATH . $screenshot . '" width="400px" height="350px" alt="Score image" /></td></tr>';

		}


echo '</p>';

if (is_file(GW_UPLOADPATH . $screenshot2) && filesize(GW_UPLOADPATH . $screenshot2) > 0) {
		        
		//echo '<td><li><a href="images/'.$row['screenshot'].'"><img src="' . GW_UPLOADPATH . $row['screenshot'] . '" width="200px" height="150px" alt="Score image" /></a></li></td></tr>';	  
		echo '<td>Foto2: <img border=1 src="' . GW_UPLOADPATH . $screenshot2 . '" width="200px" height="150px" alt="Score image" /></td>';

		}


//echo '</p>';			

if (is_file(GW_UPLOADPATH . $screenshot3) && filesize(GW_UPLOADPATH . $screenshot3) > 0) {
		        
		//echo '<td><li><a href="images/'.$row['screenshot'].'"><img src="' . GW_UPLOADPATH . $row['screenshot'] . '" width="200px" height="150px" alt="Score image" /></a></li></td></tr>';	  
		echo '<td> Foto3: <img border=1 src="' . GW_UPLOADPATH . $screenshot3 . '" width="200px" height="150px" alt="Score image" /></td></tr>';

		}

	
	echo '</p>';
	
	echo '<input type="hidden" name="screenshot" value="' . $screenshot . '" />';
	echo '<input type="hidden" name="screenshot2" value="' . $screenshot2 . '" />';
	echo '<input type="hidden" name="screenshot3" value="' . $screenshot3 . '" />';
		
	echo '</p>';
		
	echo '</p>';
		
	echo '</p>';
	
	echo '<label for="confirm">Confirmar cambios:</label><input type="radio" name="confirm" value="Si" /> Sí ';
    echo '<input type="radio" name="confirm" value="No" checked="checked" /> No <br />';
	
	echo '</p>';
	
	echo '<input type="submit" value="ENVIAR" name="submit" />';
    
	echo '</form>';
  
  }

  echo '<p><a href="admin.php">&lt;&lt; Volver</a></p>';
  
?>

</body> 
</html>
