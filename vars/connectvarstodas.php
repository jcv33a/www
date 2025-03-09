<?php
  // Define database connection constants
   define('DB_HOST', 'localhost');
   define('DB_USER', 'pepe');
   define('DB_PASSWORD', '2121');
   define('DB_NAME', 'mercadillo');
?>

<?php
  // Define database connection constants
   define('DB_HOST', 'localhost');
   define('DB_USER', 'pepe');
   define('DB_PASSWORD', '2121');
   define('DB_NAME', 'db551314202');
?>

<?php
  // Define database connection constants
   define('DB_HOST', 'db551314202.db.1and1.com');
   define('DB_USER', 'dbo551314202');
   define('DB_PASSWORD', '');
   define('DB_NAME', 'db551314202');
?>

<?php
  // Define database connection constants
   define('DB_HOST', 'db555808602.db.1and1.com');
   define('DB_USER', 'dbo555808602');
   define('DB_PASSWORD', '');
   define('DB_NAME', 'db555808602');
?>

<?php
    $host_name  = "db551314202.db.1and1.com";
    $database   = "db551314202";
    $user_name  = "dbo551314202";
    $password   = "<Introduzca aquí su contraseña. >";

    $connect = mysqli_connect($host_name, $user_name, $password, $database);

    if (mysqli_connect_errno())
    {
        echo "Error al conectar con servidor MySQL: " . mysqli_connect_error();
    }
?>

<?php
    $host_name  = "db555808602.db.1and1.com";
    $database   = "db555808602";
    $user_name  = "dbo555808602";
    $password   = "<Introduzca aquí su contraseña. >";
    $connect = mysqli_connect($host_name, $user_name, $password, $database);
    
    if (mysqli_connect_errno())
    {
     echo "Error al conectar con servidor MySQL: " . mysqli_connect_error();
    }
?>
