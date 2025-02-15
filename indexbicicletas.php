<?php

	include ("cabecera.php");
	
?>

<?php

  require_once('appvars.php');
  require_once('connectvars.php');
  
//Limito la busqueda 
$TAMANO_PAGINA = 10; 
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

	$query = "select * from guitarwars where categoria='bicicletas'";
	$data = mysqli_query($dbc, $query);	
	$num_total_registros = mysqli_num_rows($data); 
	//calculo el total de páginas 
	$total_paginas = ceil($num_total_registros / $TAMANO_PAGINA);  

	$query = "select * from guitarwars where categoria='bicicletas'" . " ORDER BY date DESC limit " . $inicio . "," . $TAMANO_PAGINA;
	$data = mysqli_query($dbc, $query);

  // Loop through the array of score data, formatting it as HTML 
  echo '<table>';
  $i = 0;
  while ($row = mysqli_fetch_array($data)) { 
  
    // Display the score data
	
   // if ($i == 0) {
   //   echo '<tr><td colspan="2" class="topscoreheader">Top Teléfono: ' . $row['score'] . '</td></tr>';
   // }
   
    echo '<tr><td colspan="2" class="topscoreheader">Teléfono: ' . $row['score'] . '</td></tr>';

    echo '<tr><td class="scoreinfo">';
	echo '<strong>Teléfono:</strong> ';
    echo '<span class="score">' . $row['score'] . '</span><br />';
	
	echo '<strong>Referencia:</strong> ' . $row['id'] . '<br />';
	
	//echo '<strong>Anuncio premium hasta:</strong> ' . $row['date'] . '<br />';
	
    echo '<strong>Nombre:</strong> ' . $row['name'] . '<br />';
   
	echo '<strong>Ciudad:</strong> ' . $row['ciudad'] . '<br />';
	echo '<strong>Provincia:</strong> ' . $row['provincia'] . '<br />';
	
	echo '<strong>Categoría:</strong> ' . $row['categoria'] . '<br />';
	
	//echo '<strong>Marca:</strong> ' . $row['marca'] . '<br />';
	//echo '<strong>Modelo:</strong> ' . $row['modelo'] . '<br />';
	//echo '<strong>Cilindrada (cc):</strong> ' . $row['cilindrada'] . '<br />';
	//echo '<strong>Kilómetros:</strong> ' . $row['kilometros'] . '<br />';
	//echo '<strong>Precio (€):</strong> ' . $row['precio'] . '<br />';
	
	//echo '<strong>Descripción:</strong> ' . $row['descripcion'] . '</td>';
	
	echo '<strong>Descripción:</strong>' . '<br />' . '<textarea 
	disabled
	rows="10" cols="40" 
	width="300" 
	style="family: Verdana; font-size: 85%; height: 85; font-family: Verdana; background-color: #FFFFFF; color: #000081; border: 1 solid #006699" 
	maxlength="100" 
	size="200"
	> '. $row['descripcion'] .' </textarea> <link href="images/main.css" rel="stylesheet" type="text/css" /> </td>';
	
	if (is_file(GW_UPLOADPATH . $row['screenshot']) && filesize(GW_UPLOADPATH . $row['screenshot']) > 0) {
		        
	  echo '<td><li><a href="images/'.$row['screenshot'].'"><img src="' . GW_UPLOADPATH . $row['screenshot'] . '" width="400px" height="350px" alt="Score image" /></a></li></td></tr>';
    
	}
    else {
      echo '<td><img src="' . GW_UPLOADPATH . 'unverified.gif' . '" width="400" height="350" alt="Unverified score" /></td></tr>';
    }
    $i++;
  }
  echo '</table>';

//cerramos el conjunto de resultado y la conexión con la base de datos 
mysqli_free_result($data); 
mysqli_close($dbc);  

//pongo el número de registros total, el tamaño de página y la página que se muestra
echo "<hr>"; 
echo "Número de registros encontrados: " . $num_total_registros . "<br>"; 
echo "Se muestran páginas de " . $TAMANO_PAGINA . " registros cada una<br>"; 
echo "Mostrando la página " . $pagina . " de " . $total_paginas . "<p>"; 

//muestro los distintos índices de las páginas, si es que hay varias páginas 
if ($total_paginas > 1){ 
for ($i=1;$i<=$total_paginas;$i++){ 
if ($pagina == $i) 
//si muestro el índice de la página actual, no coloco enlace 
echo $pagina . " "; 
else 
//si el índice no corresponde con la página mostrada actualmente, coloco el enlace para ir a esa página 
echo "<a href='indexbicicletas.php?pagina=" . $i . "'>" . $i . "</a> "; 
} 
} 

?>

<br/>

<?php

	include ("pie.php");
	
?>

	</ul>
	</div>
</div>

</body>
</html>
