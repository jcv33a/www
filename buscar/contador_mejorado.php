<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Contador PHP</title>
</head>

<body>
<?
function interface_contador(){ 

    $archivo = "contador_mejorado.txt"; 
    $info = array(); 

    //comprobar si existe el archivo 
    if (file_exists($archivo)){ 
       // abrir archivo de texto y introducir los datos en el array $info 
       $fp = fopen($archivo,"r"); 
       $contador = fgets($fp, 26); 
       $info = explode(" ",$contador); 
       fclose($fp); 

       // poner nombre a cada dato 
       $mes_actual = date("m"); 
       $mes_ultimo = $info[0]; 
       $visitas_mes = $info[1]; 
       $visitas_totales = $info[2]; 
    }else{ 
       // inicializar valores 
       $mes_actual = date("m"); 
       $mes_ultimo = "0"; 
       $visitas_mes = 0; 
       $visitas_totales = 0; 
    } 

    // incrementar las visitas del mes seg�n si estamos en el mismo 
    // mes o no que el de la ultima visita, o ponerlas a cero 
    if ($mes_actual==$mes_ultimo){ 
       $visitas_mes++; 
    }else{ 
       $visitas_mes=1; 
    } 
    $visitas_totales++; 

    // reconstruir el array con los nuevos valores 
    $info[0] = $mes_actual; 
    $info[1] = $visitas_mes; 
    $info[2] = $visitas_totales; 

    // grabar los valores en el archivo de nuevo 
    $info_nueva = implode(" ",$info); 
    $fp = fopen($archivo,"w+"); 
    fwrite($fp, $info_nueva, 26); 
    fclose($fp); 

    // devolver el array 
    return $info; 
}

//llamo a la funci�n
$info = interface_contador();

//muestro los datos del contador
echo "<b>mes:</b> ". $info[0] . "<br>";
echo "<b>Busquedas realizadas este mes:</b> " . $info[1] . "<br>";
echo "<b>Busquedas totales:</b> " . $info[2] . "<br>";
?>


</body>
</html>
