<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Anuncios gratis en Pilas</title>
  <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
  <h2>Anuncios gratis en Pilas - Administración</h2>
  <p>Lista de anuncios. Usa esta página para eliminar anuncios.</p>
  
<form method="get" action="http://www.anunciospilas.es/">
  <input type="submit" value="Volver a la página principal" /><br/>
</form>

	</p>
	
	<hr />

<?php
  require_once('appvars.php');
  require_once('connectvars.php');

  // Connect to the database 
  $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME); 

  // Retrieve the score data from MySQL
  // $query = "SELECT * FROM guitarwars ORDER BY score DESC, date ASC";
  $query = "SELECT * FROM guitarwars ORDER BY date DESC";
  $data = mysqli_query($dbc, $query);

  // Loop through the array of score data, formatting it as HTML 
  echo '<table>';
  while ($row = mysqli_fetch_array($data)) { 
    // Display the score data
    echo '<tr class="scorerow"><td><strong>' . $row['name'] . '</strong></td>';
    echo '<td>' . $row['date'] . '</td>';
    echo '<td>' . $row['score'] . '</td>';
	echo '<td class="scorerow"><td><strong>' . $row['id'] . '</strong></td>';
	
    echo '<td><a href="removescore.php?id=' . $row['id'] . '&amp;date=' . $row['date'] .
      '&amp;name=' . $row['name'] . '&amp;score=' . $row['score'] .
      '&amp;screenshot=' . $row['screenshot'] . '">Remove</a></td></tr>';
  }
  echo '</table>';

  mysqli_close($dbc);
?>

</body> 
</html>
