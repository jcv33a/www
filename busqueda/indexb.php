<?php

	include ("cabecera.php");
	require_once('appvars.php');
	
?>

<hr>
<br/>

<?php
$conexion = mysql_connect('db555808602.db.1and1.com', 'dbo555808602', 'josecruzvela');
mysql_select_db('db555808602');
?>

<?php
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

//miro a ver el número total de campos que hay en la tabla con esa búsqueda 
$ssql = "select * from guitarwars " . $criterio;
$rs = mysql_query($ssql,$conexion); 
$num_total_registros = mysql_num_rows($rs); 
//calculo el total de páginas 
$total_paginas = ceil($num_total_registros / $TAMANO_PAGINA); 

//construyo la sentencia SQL 
$ssql = "select * from guitarwars " . $criterio . " ORDER BY date DESC limit " . $inicio . "," . $TAMANO_PAGINA; 
$rs = mysql_query($ssql,$conexion);
 
while ($fila = mysql_fetch_object($rs)){ 
echo $fila->NombreComer . "<br>"; 

echo '<table>';
$i = 0;
while ($fila = mysql_fetch_array($rs)) { 

    echo '<tr><td colspan="2" class="topscoreheader">Teléfono: ' . $fila['score'] . '</td></tr>';

    echo '<tr><td class="scoreinfo">';
	echo '<strong>Teléfono:</strong> ';
    echo '<span class="score">' . $fila['score'] . '</span><br />';
	
	echo '<strong>Referencia:</strong> ' . $fila['id'] . '<br />';
	
	//echo '<strong>Anuncio premium hasta:</strong> ' . $fila['date'] . '<br />';
	
    echo '<strong>Nombre:</strong> ' . $fila['name'] . '<br />';
   
	echo '<strong>Ciudad:</strong> ' . $fila['ciudad'] . '<br />';
	echo '<strong>Provincia:</strong> ' . $fila['provincia'] . '<br />';
	
	echo '<strong>Categoría:</strong> ' . $fila['categoria'] . '<br />';
	
	//echo '<strong>Marca:</strong> ' . $fila['marca'] . '<br />';
	//echo '<strong>Modelo:</strong> ' . $fila['modelo'] . '<br />';
	//echo '<strong>Cilindrada (cc):</strong> ' . $fila['cilindrada'] . '<br />';
	//echo '<strong>Kilómetros:</strong> ' . $fila['kilometros'] . '<br />';
	//echo '<strong>Precio (€):</strong> ' . $fila['precio'] . '<br />';
	
	//echo '<strong>Descripción:</strong> ' . $fila['descripcion'] . '</td>';
	
	echo '<strong>Descripción:</strong>' . '<br />' . '<textarea 
	disabled
	filas="40" 
	cols="40"
	width="300px"
	height="300px"
	style="family: Verdana; font-size: 85%; height: 85; font-family: Verdana; background-color: #FFFFFF; color: #000081; border: 1 solid #006699" 
	maxlength="100"
	size="200"
	> '. $fila['descripcion'] .' </textarea> <link href="images/main.css" rel="stylesheet" type="text/css" /> <br /></td>';

	//echo '<strong>Descripción:</strong>' . '<textarea filas="15" cols="50"> '. $fila['descripcion'] .' </textarea></td>';
	
	//echo '<td><img src="' . $fila['descripcion'] . '" width="400px" height="350px" alt="Score image" /></td>';
	
	if (is_file(GW_UPLOADPATH . $fila['screenshot']) && filesize(GW_UPLOADPATH . $fila['screenshot']) > 0) {
	
      //echo '<td><img src="' . GW_UPLOADPATH . $fila['screenshot'] . '" width="400px" height="350px" alt="Score image" /></td></tr>';
	        
	  echo '<td><li><a href="images/'.$fila['screenshot'].'"><img src="' . GW_UPLOADPATH . $fila['screenshot'] . '" width="400px" height="350px" alt="Score image" /></a></li></td></tr>';

	  //<li>.<a href="#"><img src="images/coche.jpg"width="190" height="190" alt="coches"/></a></li>
    
	}
    else {
      echo '<td><img src="' . GW_UPLOADPATH . 'unverified.gif' . '" width="400" height="350" alt="Unverified score" /></td></tr>';
    }
	$i++;
}
echo '</table>';

} 

//cerramos el conjunto de resultado y la conexión con la base de datos 
mysql_free_result($rs); 
mysql_close($conexion); 

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
echo "<a href='index.php?pagina=" . $i . "&criterio=" . $txt_criterio . "'>" . $i . "</a> "; 
} 
} 

//inicializo el criterio y recibo cualquier cadena que se desee buscar 
$criterio = ""; 
if ($_GET["criterio"]!=""){ 
$txt_criterio = $_GET["criterio"]; 
$criterio = " where NombreComer like '%" . $txt_criterio . "%'"; 
}

?>

<hr>

<form action="index.php" method="get"> 
Criterio de búsqueda: 
<input type="text" name="criterio" size="22" maxlength="150"> 
<input type="submit" value="Buscar"> 
</form>

<?php

	include ("pie.php");
	
?>

	</ul>
	</div>
</div>

</body>
</html>
