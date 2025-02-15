<?php
  // Insert the page header
  $page_title = 'Registro';
  require_once('header.php');

  require_once('appvars.php');
  require_once('connectvars.php');

  // Connect to the database
  $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

  if (isset($_POST['submit'])) {
    // Grab the profile data from the POST
    $username = mysqli_real_escape_string($dbc, trim($_POST['username']));
    $password1 = mysqli_real_escape_string($dbc, trim($_POST['password1']));
    $password2 = mysqli_real_escape_string($dbc, trim($_POST['password2']));

    if (!empty($username) && !empty($password1) && !empty($password2) && ($password1 == $password2)) {
      // Make sure someone isn't already registered using this username
      $query = "SELECT * FROM mismatch_user WHERE username = '$username'";
      $data = mysqli_query($dbc, $query);
      if (mysqli_num_rows($data) == 0) {
        // The username is unique, so insert the data into the database
        $query = "INSERT INTO mismatch_user (username, password, pass, join_date) VALUES ('$username', SHA('$password1'), '$password1', NOW())";
        mysqli_query($dbc, $query);

        // Confirm success with the user
        echo '<p>Su nueva cuenta ha sido creada con éxito. <a href="login.php">INICIA SESIÓN</a>.</p>';

        mysqli_close($dbc);
        exit();
      }
      else {
        // An account already exists for this username, so display an error message
        echo '<p class="error">Ya existe una cuenta para este nombre de usuario. Por favor, use un nombre diferente.</p>';
        $username = "";
      }
    }
    else {
      echo '<p class="error">Debe introducir todos los datos de registro, incluyendo la contraseña deseada dos veces.</p>';
    }
  }

  mysqli_close($dbc);
?>

  <p>Introduce un nombre de usuario y una contraseña para registrarte.</p>
    
	<form method="get" action="index.php">
	<input type="submit" value="Volver al menú de administración" /><br/>
	</form>
	</p>
	
  <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
    <fieldset>
      <legend>Registro</legend>
      <label for="username">Usuario:</label>
      <input type="text" name="username" value="<?php if (!empty($username)) echo $username; ?>" /><br />
      <label for="password1">Contraseña:</label>
      <input type="password" name="password1" /><br />
      <label for="password2">Contraseña:</label>
      <input type="password" name="password2" /><br />
    </fieldset>
    <input type="submit" value="Enviar" name="submit" />
  </form>

<?php
  // Insert the page footer
  require_once('footer.php');
?>
