<?php
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
include "database.php";

?>

<!DOCTYPE html>
<html>
 <head>
   <title>Видеокарты</title>
   <meta charset="utf-8">
 </head>
 <style>
 th, td {
	 padding: 10px;
 }
 
 th {
	 background: #606060;
	 color: #ffffff;
 }
 
 td {
	 background: #b5b5b5;
 }
 </style>
 <body>
  <table>
  <tr> 
  <th>ID</th>
  <th>Name</th>
  <th>Interface</th>
  <th>Core</th>
  <th>Price</th>
  </tr>
  
  <?php
  
  $results = mysqli_query($link, "SELECT * FROM `gpu2` ");
	$results = mysqli_fetch_all($results);
	foreach ($results  as $result) {
 
  ?>
  
 <tr>
 <td><?= $result[0] ?></td>
 <td><?= $result[1] ?></td>
 <td><?= $result[2] ?></td>
 <td><?= $result[3] ?></td>
 <td><?= $result[4] ?></td>
 </tr>
 <?php
	}
	?>
 
 
 </body> 
</html>


