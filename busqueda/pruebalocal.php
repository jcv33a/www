<?php
    $host_name  = "db555808602.db.1and1.com";
    $database   = "db555808602";
    $user_name  = "dbo555808602";
    $password   = "josecruzvela";

    $connect = mysqli_connect($host_name, $user_name, $password, $database);
    if (mysqli_connect_errno())
    {
    echo "Error al conectar con servidor MySQL: " . mysqli_connect_error();
    }
?>

<?php
$conexion = mysql_connect('db555808602.db.1and1.com', 'dbo555808602', 'josecruzvela');
mysql_select_db('db555808602');
?>

<?php
//Limito la busqueda 
$TAMANO_PAGINA = 10; 
//examino la página a mostrar y el inicio del registro a mostrar 
$pagina = isset($_GET["pagina"])? $_GET["pagina"]: ''; // La he cambiado y ya no me da error
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

//pongo el número de registros total, el tamaño de página y la página que se muestra 
echo "Número de registros encontrados: " . $num_total_registros . "<br>"; 
echo "Se muestran páginas de " . $TAMANO_PAGINA . " registros cada una<br>"; 
echo "Mostrando la página " . $pagina . " de " . $total_paginas . "<p>"; 

//construyo la sentencia SQL 
$ssql = "select * from guitarwars " . $criterio . " limit " . $inicio . "," . $TAMANO_PAGINA; 
$rs = mysql_query($ssql); 
while ($fila = mysql_fetch_object($rs)){ 
echo $fila->NombreComer . "<br>"; 
} 
//cerramos el conjunto de resultado y la conexión con la base de datos 
mysql_free_result($rs); 
mysql_close($conexion); 

//muestro los distintos índices de las páginas, si es que hay varias páginas 
if ($total_paginas > 1){ 
for ($i=1;$i<=$total_paginas;$i++){ 
if ($pagina == $i) 
//si muestro el índice de la página actual, no coloco enlace 
echo $pagina . " "; 
else 
//si el índice no corresponde con la página mostrada actualmente, coloco el enlace para ir a esa página 
echo "<a href='../index.php?pagina=" . $i . "&criterio=" . $txt_criterio . "'>" . $i . "</a> "; 
} 
} 

//inicializo el criterio y recibo cualquier cadena que se desee buscar 
$criterio = ""; 
if ($_GET["criterio"]!=""){ 
$txt_criterio = $_GET["criterio"]; 
$criterio = " where NombreComer like '%" . $txt_criterio . "%'"; 
}

?>
<form action="PruebaLocal.php" method="get"> 
Criterio de búsqueda: 
<input type="text" name="criterio" size="22" maxlength="150"> 
<input type="submit" value="Buscar"> 
</form>