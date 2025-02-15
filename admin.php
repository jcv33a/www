<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Anuncios Gratis</title>
  <link rel="stylesheet" type="text/css" href="/style.css" />
  <link rel="stylesheet" type="text/css" href="/buscar/stylesearch.css" />
  <link href="/images/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <h2>Anuncios Gratis - Administración</h2>
  <p>Lista de anuncios. Usa esta página para administrar anuncios.</p>
  
<form method="get" action="/index.php">
  <input type="submit" value="Volver a la página principal" /><br/>
</form>

</p>
	
<hr />

<h2>Acceso con usuario registrado</h2>

<form action="verifylogin.php" method="POST">

Usuario:<input type="text" name="nombre" />

Contraseña:<input type="password" name="clave" />

<input type="submit" name="enviar" value="validar"/>

<br />
<br />

<hr/>

<?php
if (isset($_GET['message']) && $_GET['message'] == '1') 
{
echo "<span style=’color:#ff0000’>Inicio de sesión incorrecto</span>";
}
?>

</form>
</body>
</html>