<?php
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
include "database.php";

?>

<!DOCTYPE html>
<html>
 <head>
   <title>MotherBoards</title>
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
  <th>Socket</th>
  <th>Chipset</th>
  <th>Price</th>
  <th>Memory_Type</th>
  <th>Interface</th>
  </tr>
  
  <?php
  
  $results = mysqli_query($link, "SELECT * FROM `motherboard` ");
	$results = mysqli_fetch_all($results);
	foreach ($results  as $result) {
 
  ?>
  
 <tr>
 <td><?= $result[0] ?></td>
 <td><?= $result[1] ?></td>
 <td><?= $result[2] ?></td>
 <td><?= $result[3] ?></td>
 <td><?= $result[4] ?></td>
 <td><?= $result[5] ?></td>
 <td><?= $result[6] ?></td>
 
 </tr>
 <?php
	}
	?>
 
 
 </body> 
</html>


