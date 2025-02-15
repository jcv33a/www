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
  <h2>Anuncios Gratis - Eliminar Tareas</h2>

<?php
  require_once('appvars.php');
  require_once('connectvars.php');

  if (isset($_GET['id']) && isset($_GET['date']) && isset($_GET['name']) && isset($_GET['score']) && isset($_GET['screenshot']) && isset($_GET['screenshot2']) && isset($_GET['screenshot3'])) {
    // Grab the score data from the GET
    $id = $_GET['id'];
    $date = $_GET['date'];
    $name = $_GET['name'];
    $score = $_GET['score'];
    $screenshot = $_GET['screenshot'];
	$screenshot2 = $_GET['screenshot2'];
	$screenshot3 = $_GET['screenshot3'];
  }
  else if (isset($_POST['id']) && isset($_POST['name']) && isset($_POST['score'])) {
    // Grab the score data from the POST
    $id = $_POST['id'];
    $name = $_POST['name'];
    $score = $_POST['score'];
	$screenshot = $_POST['screenshot'];
	$screenshot2 = $_POST['screenshot2'];
	$screenshot3 = $_POST['screenshot3'];
  }
  else {
    echo '<p class="error">Este registro no se puede eliminar o editar, contiene carácteres no permitidos.</p>';
  }

  if (isset($_POST['submit'])) {
    if ($_POST['confirm'] == 'Si') {
      // Delete the screen shot image file from the server
      //@unlink(GW_UPLOADPATH . $screenshot);

	  $myFile = GW_UPLOADPATH . $screenshot; 
      unlink($myFile); 
	  //echo $myFile;
	  
	  $myFile2 = GW_UPLOADPATH . $screenshot2; 
      unlink($myFile2); 
	  //echo $myFile2;
	  
	  $myFile3 = GW_UPLOADPATH . $screenshot3; 
      unlink($myFile3); 
	  //echo $myFile3;
	  
      // Connect to the database
      $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME); 

      // Delete the score data from the database
      $query = "DELETE FROM agenda WHERE id = $id LIMIT 1";
      mysqli_query($dbc, $query);
      mysqli_close($dbc);

      // Confirm success with the user
      echo '<p>La tarea: ' . $name . ', se ha eliminado.';
    }
    else {
      echo '<p class="error">La tarea no se ha eliminado.</p>';
    }
  }
  else if (isset($id) && isset($name) && isset($date) && isset($score)) {
    echo '<p>¿Está seguro de que quiere eliminar la tarea?</p>';
    echo '<p><strong>Título: </strong>' . $name . '<br /><strong>Fecha: </strong>' . $date .
      '<br /><strong>Teléfono: </strong>' . $score . '</p>';
    echo '<form method="post" action="removescore.php">';
    echo '<input type="radio" name="confirm" value="Si" /> Sí ';
    echo '<input type="radio" name="confirm" value="No" checked="checked" /> No <br />';
    echo '</p>';
	echo '<input type="submit" value="Enviar" name="submit" />';
    echo '<input type="hidden" name="id" value="' . $id . '" />';
    echo '<input type="hidden" name="name" value="' . $name . '" />';
    echo '<input type="hidden" name="score" value="' . $score . '" />';
	echo '<input type="hidden" name="screenshot" value="' . $screenshot . '" />';
	echo '<input type="hidden" name="screenshot2" value="' . $screenshot2 . '" />';
	echo '<input type="hidden" name="screenshot3" value="' . $screenshot3 . '" />';
    echo '</form>';
  }

  echo '<p><a href="admin.php">&lt;&lt; Volver</a></p>';
?>

</body> 
</html>
