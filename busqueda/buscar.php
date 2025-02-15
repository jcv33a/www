<?php
//inicializo el criterio y recibo cualquier cadena que se desee buscar 
$criterio = ""; 
if ($_GET["criterio"]!=""){ 
   	$txt_criterio = $_GET["criterio"]; 
   	$criterio = " where nombre_pais like '%" . $txt_criterio . "%'"; 
}

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
$ssql = "select * from pais " . $criterio; 
$rs = mysql_query($ssql,$conn); 
$num_total_registros = mysql_num_rows($rs); 
//calculo el total de páginas 
$total_paginas = ceil($num_total_registros / $TAMANO_PAGINA); 

//pongo el número de registros total, el tamaño de página y la página que se muestra 
echo "Número de registros encontrados: " . $num_total_registros . "<br>"; 
echo "Se muestran páginas de " . $TAMANO_PAGINA . " registros cada una<br>"; 
echo "Mostrando la página " . $pagina . " de " . $total_paginas . "<p>";

//construyo la sentencia SQL 
$ssql = "select * from pais " . $criterio . " limit " . $inicio . "," . $TAMANO_PAGINA; 
$rs = mysql_query($ssql); 
while ($fila = mysql_fetch_object($rs)){ 
   	echo $fila->nombre_pais . "<br>"; 
} 
//cerramos el conjunto de resultado y la conexión con la base de datos 
mysql_free_result($rs); 
mysql_close($conn);

//muestro los distintos índices de las páginas, si es que hay varias páginas 
if ($total_paginas > 1){ 
   	for ($i=1;$i<=$total_paginas;$i++){ 
      	if ($pagina == $i) 
         	//si muestro el índice de la página actual, no coloco enlace 
         	echo $pagina . " "; 
      	else 
         	//si el índice no corresponde con la página mostrada actualmente, coloco el enlace para ir a esa página 
         	echo "<a href='buscar.php?pagina=" . $i . "&criterio=" . $txt_criterio . "'>" . $i . "</a> "; 
   	} 
}
?>

<form action="buscar.php" method="get"> 
Criterio de busqueda: 
<input type="text" name="criterio" size="22" maxlength="150"> 
<input type="submit" value="Buscar"> 
</form>