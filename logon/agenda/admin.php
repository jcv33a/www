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
  <h2>Anuncios Gratis - Administración de Mis Tareas</h2>
  <p>Lista de Tareas. Usa esta página para administrar tareas.</p>
  
<form method="get" action="index.php">
  <input type="submit" value="Volver" /><br/>
</form>

	</p>
	
	<hr />

<?php

  require_once('startsession.php');
  require_once('appvars.php');
  require_once('connectvars.php');
  
	if (isset($_SESSION['user_id'])) {
			$user_id = $_SESSION['user_id'];
	}
	
	//Limito la busqueda 
$TAMANO_PAGINA = 5; 
//examino la página a mostrar y el inicio del registro a mostrar 
$pagina = $_GET["pagina"];
if (!$pagina) { 
$inicio = 0; 
$pagina=1; 
} 
else { 
$inicio = ($pagina - 1) * $TAMANO_PAGINA; 
}
	
  // Connect to the database 
  $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME); 

  // Retrieve the score data from MySQL
  if ($user_id == 0)
  {
	$query = "SELECT * FROM agenda order by date desc";
	$data = mysqli_query($dbc, $query);
	//$query = "SELECT * FROM agenda ORDER BY date DESC";
		$num_total_registros = mysqli_num_rows($data); 
	//calculo el total de páginas 
	$total_paginas = ceil($num_total_registros / $TAMANO_PAGINA);
	$query = "SELECT * FROM agenda order by date desc limit " . $inicio . "," . $TAMANO_PAGINA;
  }
  else
  {
	$query = "SELECT * FROM agenda WHERE user_id = $user_id order by date desc";
	$data = mysqli_query($dbc, $query);
	//$query = "SELECT * FROM agenda WHERE user_id = $user_id ORDER BY date DESC";
		$num_total_registros = mysqli_num_rows($data); 
	//calculo el total de páginas 
	$total_paginas = ceil($num_total_registros / $TAMANO_PAGINA);
		$query = "SELECT * FROM agenda WHERE user_id = $user_id order by date desc limit " . $inicio . "," . $TAMANO_PAGINA;
  }
  
  $data = mysqli_query($dbc, $query);

  // Loop through the array of score data, formatting it as HTML 
  echo '<table>';
  $i = 0;
  while ($row = mysqli_fetch_array($data)) { 
    // Display the score data
	
	echo '<tr class="scorerow"><td><strong>' . 'Referencia: ' . $row['id'] . '</strong></tr>';
	echo '<td>' . 'id: ' . $row['user_id'] . '</tr>';
	echo '<td>' . 'Fecha: ' . $row['date'] . '</tr>';
    echo '<tr class="scorerow"><td>' . 'Título: ' . $row['name'] . '</tr>';

		
	echo '<td>' . 'Descripción:' . '<br />' . '<textarea 
	disabled
	rows="5" cols="60" 
	width="300" 
	style="family: Verdana; font-size: 85%; height: 85; font-family: Verdana; background-color: #FFFFFF; color: #000081; border: 1 solid #006699" 
	maxlength="100" 
	size="200"
	> '. $row['descripcion'] .' </textarea> <link href="images/main.css" rel="stylesheet" type="text/css" /> </td></tr>';
	
if (is_file(GW_UPLOADPATH . $row['screenshot']) && filesize(GW_UPLOADPATH . $row['screenshot']) > 0) {
		        
	  
      echo '<td>Foto1: <img border=1 src="' . GW_UPLOADPATH . $row['screenshot'] . '" width="400px" height="350px" alt="Score image" /></td></tr>';

	}
	
if (is_file(GW_UPLOADPATH . $row['screenshot2']) && filesize(GW_UPLOADPATH . $row['screenshot2']) > 0) {
		        
	  
      echo '<td>Foto2: <img border=1 src="' . GW_UPLOADPATH . $row['screenshot2'] . '" width="200px" height="150px" alt="Score image" /></td>';

	}

if (is_file(GW_UPLOADPATH . $row['screenshot3']) && filesize(GW_UPLOADPATH . $row['screenshot3']) > 0) {
		        
	  
      echo '<td>Foto3: <img border=1 src="' . GW_UPLOADPATH . $row['screenshot3'] . '" width="200px" height="150px" alt="Score image" /></td></tr>';

	}
		
	echo '<td></tr>';
	echo '<td></tr>';
	
    echo '<td><a href="removescore.php?id=' . $row['id'] . '&amp;date=' . $row['date'] .
      '&amp;name=' . $row['name'] . '&amp;score=' . $row['score'] .
	  '&amp;screenshot=' . $row['screenshot'] .
	  '&amp;screenshot2=' . $row['screenshot2'] .        
	  '&amp;screenshot3=' . $row['screenshot3'] . '">Eliminar</a></tr>';
	
	echo '</p>';
	
	echo '<td><a href="updatescore2.php?id=' . $row['id'] . 
	  '&amp;date=' . $row['date'] .
      '&amp;name=' . $row['name'] . 
	  '&amp;descripcion=' . $row['descripcion'] . 
	  '&amp;score=' . $row['score'] .
	  '&amp;provincia=' . $row['provincia'] .
	  '&amp;categoria=' . $row['categoria'] .
	  '&amp;screenshot=' . $row['screenshot'] .
	  '&amp;screenshot2=' . $row['screenshot2'] .
      '&amp;screenshot3=' . $row['screenshot3'] . '">Modificar</a></tr>';
	
	echo '</p>';
	
	echo '<td><a href="updatescore.php?id=' . $row['id'] . '&amp;date=' . $row['date'] .
	  '&amp;name=' . $row['name'] . '&amp;score=' . $row['score'] .
      '&amp;screenshot=' . $row['screenshot'] . '">Renovar</a></tr>';
	
	//echo '<td>________________________________________'; 
	echo '</p>';
	echo '<td><hr>';
	$i++;
  }
  echo '</table>';
  
//cerramos el conjunto de resultado y la conexión con la base de datos 
mysqli_free_result($data); 
  mysqli_close($dbc);
  
  //pongo el número de registros total, el tamaño de página y la página que se muestra
//echo "<hr>"; 

//echo "Número de registros encontrados: " . $num_total_registros . "<br>"; 
//echo "Se muestran páginas de " . $TAMANO_PAGINA . " registros cada una<br>"; 
//echo "Mostrando la página " . $pagina . " de " . $total_paginas . "<p>";

if ($total_paginas > 1){
	//echo '<hr>';
	echo "Página " . $pagina . " de " . $total_paginas . "<p>";
}
else {
	//echo '<hr>';
	//echo "No tienes anuncios publicados. <p>";
	echo "<p>";
}

//muestro los distintos índices de las páginas, si es que hay varias páginas 
if ($total_paginas > 1){ 
for ($i=1;$i<=$total_paginas;$i++){ 
if ($pagina == $i) {
//si muestro el índice de la página actual, no coloco enlace 
echo $pagina . " ";
} 
else {
//si el índice no corresponde con la página mostrada actualmente, coloco el enlace para ir a esa página 
echo "<a href='admin.php?pagina=" . $i . "'>" . $i . "</a> "; 
}
} 
} 

?>

<form method="get" action="index.php">
  <input type="submit" value="Volver" /><br/>
</form>

	</p>

<?php
  // Insert the page footer
  require_once('footer.php');
?>
	
</body> 
</html>
