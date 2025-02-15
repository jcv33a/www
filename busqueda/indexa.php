<?php

	include ("cabecera.php");
	
?>

<?php

  require_once('appvars.php');
  require_once('connectvars.php');
  
  if (isset($_POST['submit'])) {
  
  $categoria = $_POST['categoria'];
   
  // Connect to the database 
  $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME); 

  // Retrieve the score data from MySQL
  // $query = "SELECT * FROM guitarwars ORDER BY score DESC, date ASC";
  //$query = "SELECT * FROM guitarwars WHERE score=657360180 ORDER BY date DESC";
  $query = "SELECT * FROM guitarwars WHERE categoria='$categoria' ORDER BY date DESC";
  //$query = "SELECT * FROM guitarwars ORDER BY date DESC";
  }
  
  else {
    // Connect to the database 
  $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME); 

  // Retrieve the score data from MySQL
  //$query = "SELECT * FROM guitarwars ORDER BY score DESC, date ASC";
  //$query = "SELECT * FROM guitarwars WHERE score=657360180 ORDER BY date DESC";
  //$query = "SELECT * FROM guitarwars WHERE categoria='$categoria' ORDER BY date DESC";
  $query = "SELECT * FROM guitarwars ORDER BY date DESC";
  }
  
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

	//echo '<strong>Descripción:</strong>' . '<textarea rows="15" cols="50"> '. $row['descripcion'] .' </textarea></td>';
	
	//echo '<td><img src="' . $row['descripcion'] . '" width="400px" height="350px" alt="Score image" /></td>';
	
	if (is_file(GW_UPLOADPATH . $row['screenshot']) && filesize(GW_UPLOADPATH . $row['screenshot']) > 0) {
	
      //echo '<td><img src="' . GW_UPLOADPATH . $row['screenshot'] . '" width="400px" height="350px" alt="Score image" /></td></tr>';
	        
	  echo '<td><li><a href="images/'.$row['screenshot'].'"><img src="' . GW_UPLOADPATH . $row['screenshot'] . '" width="400px" height="350px" alt="Score image" /></a></li></td></tr>';

	  //<li>.<a href="#"><img src="images/coche.jpg"width="190" height="190" alt="coches"/></a></li>
    
	}
    else {
      echo '<td><img src="' . GW_UPLOADPATH . 'unverified.gif' . '" width="400" height="350" alt="Unverified score" /></td></tr>';
    }
    $i++;
  }
  echo '</table>';

  mysqli_close($dbc);
  
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
