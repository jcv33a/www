<?php
  // Generate the navigation menu
  echo '<hr />';
  if (isset($_SESSION['username'])) {
    echo '➊➤<a href="/index.php">Principal </a>';
	echo '➋➤<a href="/addscore.php">Publicar Anuncios </a>';
	echo '➌➤<a href="admin.php">Ver Mis Anuncios </a>';
    //echo '<a href="index.php">Home</a> &#10084; ';
    //echo '<a href="viewprofile.php">View Profile</a> &#10084; ';
    //echo '<a href="editprofile.php">Edit Profile</a> &#10084; ';
    //echo '<a href="questionnaire.php">Questionnaire</a> &#10084; ';
    //echo '<a href="mymismatch.php">My Mismatch</a> &#10084; ';
    echo '➍➤<a href="logout.php">Cerrar Sesión (' . $_SESSION['username'] . ')</a>';
  }
  else {
    echo '➊➤<a href="/index.php">Principal </a>';
	//echo '➋➤<a href="/addscore.php">Publicar Anuncios Sin Registro </a>';
    //echo '➌➤<a href="login.php">Inicia Sesión </a>';
	echo '➋➤<a href="login.php">Inicia Sesión </a>';
    //echo '➍➤<a href="signup.php">Regístrate</a>';
	echo '➌➤<a href="signup.php">Regístrate</a>';
  }
  //echo '<hr />';
?>
