<div id="pie">

<hr/>

<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- filoterapia_main_Blog1_300x250_as -->
<ins class="adsbygoogle"
     style="display:inline-block;width:300px;height:250px"
     data-ad-client="ca-pub-1707553254800023"
     data-ad-slot="8107477097"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>

<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- filoterapia_main_Blog1_300x250_as -->
<ins class="adsbygoogle"
     style="display:inline-block;width:300px;height:250px"
     data-ad-client="ca-pub-1707553254800023"
     data-ad-slot="8107477097"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>

<?php

/*

$fp = fopen("contador.txt","r"); // Abrimos el fichero donde guardaremos y leeremos las visitas 

$visitas = intval(fgets($fp)); // Leemos las visitas y usamos intval para asegurarnos de que devuelve un entero

$visitas++; // Incrementamos las visitas

fclose($fp); // Cerramos el archivo pues lo vamos a volver a abrir en modo escritura

$fp = fopen("contador.txt","w"); // Abrimos el archivo en modo escritura

fputs($fp,$visitas); // Escribimos las visitas sumadas

echo 'Visitas : ' . $visitas . ' : '; // Mostramos las visitas 

?>

<? 
$archivo = "contador.txt"; 
$contador = 0; 

$fp = fopen($archivo,"r"); 
$contador = fgets($fp, 26); 
fclose($fp); 

++$contador; 

$fp = fopen($archivo,"w+"); 
fwrite($fp, $contador, 26); 
fclose($fp); 

echo "Esta página ha sido visitada $contador veces"; 
?>

<?
function interface_contador(){ 

   	$archivo = "contador.txt"; 
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

   	// incrementar las visitas del mes según si estamos en el mismo 
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

//llamo a la función
$info = interface_contador();

//muestro los datos del contador
echo "<b>mes:</b> ". $info[0] . "<br>";
echo "<b>Visitas el último mes:</b>" . $info[1] . "<br>";
echo "<b>Visitas totales:</b>" . $info[2] . "<br>";

*/

?>

<hr />

<!--
<a href="http://www.contadorvisitasgratis.com" target="_Blank" title="contador de visitas gratis">contador de visitas gratis</a><br>
<script type="text/javascript" src="http://counter6.allfreecounter.com/private/countertab.js?c=5277ac188918225fba4ff856f485a9a4"></script>
-->

<!--<a href="http://www.contadorvisitasgratis.com" title="contador de visitas gratis"><img src="http://counter6.allfreecounter.com/private/contadorvisitasgratis.php?c=5277ac188918225fba4ff856f485a9a4" border="0" title="contador de visitas gratis" alt="contador de visitas gratis"></a>-->

Copyright ©2014-2015 anunciospilas.es/com, canalpilas.es/com, anuncioes.es/com, nuevoanuncios.es/com

</div>