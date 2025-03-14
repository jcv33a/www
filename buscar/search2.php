<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Anuncios Gratis - Search</title>
  <link rel="stylesheet" type="text/css" href="/buscar/stylesearch.css" />
  <link href="/images/main.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="/style.css" />
</head>
<body>
 
<?php

	include ("../cabecera.php");
	
?>
  
<?php

  // This function builds navigational page links based on the current page and the number of pages
  function generate_page_links($categoria, $provincia, $cur_page, $num_pages) {
    $page_links = '';

    // If this page is not the first page, generate the "previous" link
    if ($cur_page > 1) {
      $page_links .= '<a href="' . $_SERVER['PHP_SELF'] . '?categoria=' . $categoria . '&provincia=' . $provincia . '&page=' . ($cur_page - 1) . '"><-</a> ';
    }
    else {
      $page_links .= '<- ';
    }

    // Loop through the pages generating the page number links
    for ($i = 1; $i <= $num_pages; $i++) {
      if ($cur_page == $i) {
        $page_links .= ' ' . $i;
      }
      else {
        $page_links .= ' <a href="' . $_SERVER['PHP_SELF'] . '?categoria=' . $categoria . '&provincia=' . $provincia . '&page=' . $i . '"> ' . $i . '</a>';
      }
    }

    // If this page is not the last page, generate the "next" link
    if ($cur_page < $num_pages) {
      $page_links .= ' <a href="' . $_SERVER['PHP_SELF'] . '?categoria=' . $categoria . '&provincia=' . $provincia . '&page=' . ($cur_page + 1) . '">-></a>';
    }
    else {
      $page_links .= ' ->';
    }

    return $page_links;
  }

  // Grab the sort setting and search keywords from the URL using GET
  //$sort = $_GET['sort'];
  $provincia = $_GET['provincia'];
  $categoria = $_GET['categoria'];

  // Calculate pagination information
  $cur_page = isset($_GET['page']) ? $_GET['page'] : 1;
  $results_per_page = 5;  // number of results per page
  $skip = (($cur_page - 1) * $results_per_page);

  // Start generating the table of results
  //echo '<table border="0" cellpadding="2">';
  echo '<table>';
  
  // Generate the search result headings
  //echo '<tr class="heading">';
  //echo generate_sort_links($user_search, $sort);
  //echo '</tr>';

  // Connect to the database
  require_once('appvars.php');
  require_once('../connectvars.php');
  $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

  // Query to get the total results 
  $query = $query = "SELECT * FROM guitarwars WHERE categoria='$categoria' and provincia='$provincia'" . " ORDER BY date DESC";
  $result = mysqli_query($dbc, $query);
  $total = mysqli_num_rows($result);
  $num_pages = ceil($total / $results_per_page);

  // Query again to get just the subset of results
  $query =  $query . " LIMIT $skip, $results_per_page";
  $result = mysqli_query($dbc, $query);
  
  echo '<table>';
  $i = 0;
  
  while ($row = mysqli_fetch_array($result)) {

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
	
    echo '<strong>Título:</strong> ' . $row['name'] . '<br />';
   
	//echo '<strong>Ciudad:</strong> ' . $row['ciudad'] . '<br />';
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
	> '. $row['descripcion'] .' </textarea> <link href="/images/main.css" rel="stylesheet" type="text/css" /> </td>';
	
if (is_file(GW_UPLOADPATH . $row['screenshot']) && filesize(GW_UPLOADPATH . $row['screenshot']) > 0) {
		        
	  echo '<td><a target="_blank" href="/images/'.$row['screenshot'].'"><img src="' . GW_UPLOADPATH . $row['screenshot'] . '" width="400px" height="350px" alt="Score image" /></a></td></tr>';
      //echo '<td><img src="' . GW_UPLOADPATH . $row['screenshot'] . '" width="400px" height="350px" alt="Score image" /></td></tr>';

	}
    else {
      echo '<td><img src="' . GW_UPLOADPATH . 'unverified.gif' . '" width="400" height="350" alt="Unverified score" /></td></tr>';
    }

if (is_file(GW_UPLOADPATH . $row['screenshot2']) && filesize(GW_UPLOADPATH . $row['screenshot2']) > 0) {
		        
	  echo '<td><a target="_blank" href="/images/'.$row['screenshot2'].'"><img src="' . GW_UPLOADPATH . $row['screenshot2'] . '" width="400px" height="300px" alt="Score image" /></a></td>';	  
      //echo '<td><img src="' . GW_UPLOADPATH . $row['screenshot2'] . '" width="400px" height="300px" alt="Score image" /></td>';

	}
    else {
      //echo '<td><img src="' . GW_UPLOADPATH . 'unverified.gif' . '" width="400" height="300" alt="Unverified score" /></td>';
    }

if (is_file(GW_UPLOADPATH . $row['screenshot3']) && filesize(GW_UPLOADPATH . $row['screenshot3']) > 0) {
		        
	  echo '<td><a target="_blank" href="/images/'.$row['screenshot3'].'"><img src="' . GW_UPLOADPATH . $row['screenshot3'] . '" width="400px" height="300px" alt="Score image" /></a></td></tr>';	  
      //echo '<td><img src="' . GW_UPLOADPATH . $row['screenshot3'] . '" width="400px" height="300px" alt="Score image" /></td></tr>';

	}
    else {
      //echo '<td><img src="' . GW_UPLOADPATH . 'unverified.gif' . '" width="400" height="300" alt="Unverified score" /></td></tr>';
    }
	
    $i++;
 
  } 
  echo '</table>';

  // Generate navigational page links if we have more than one page
  if ($num_pages >= 1) {
    echo "<hr>";
	echo generate_page_links($categoria, $provincia, $cur_page, $num_pages);
  }
  else {
	  echo "<hr>";
	  echo ">>>>>No se han encontrado anuncios.";
	  }

  mysqli_close($dbc);
?>

<hr />

<?php

	include ("contador_mejorado.php");
	include ("../pie.php");
	
?>

</body>
</html>
