<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>lista de actividades Naranjas</title>
	<style type="text/css">
		.tablaslistado {
			border-collapse: collapse;
			box-shadow: 0px 0px 8px #000 ;
			margin: 20px;
			margin: auto;
		}
		.tablalistado th{
			border: 1px solid #000;
			padding: 5px;
		}
		.tablalistado tr{
			border: 1px solid #000;
			padding: 5px;
		}
		.tablalistado td{
			border: 1px solid #000;
			padding: 5px;
		}
	</style>
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>
	<?php  
	$mysql = new mysqli("localhost", "root", "", "practicas");
		if ($mysql->connect_error)
		die("Problemas con la conexión a la base de datos");

	$actividades = $mysql->query("select li.id as idli,
									li.descripcion as descripcionli,
									ni.descripcion as descripcionni
									from listas as li 
									inner join nivel as ni on ni.id=li.id") or 
		die($mysql->error);

	echo '<table class="tablalistado" align="center">';
	echo '<tr><th>Actividad</th><th>Color</th><th>Fecha</th></tr>';
	if ($color_evento == "#FF5722") {
		while ($act = $actividades->fetch_array()) {			
		echo '<center>';
		echo '<tr>';
		echo '<td "list-group-item list-group-item-action"">';
		echo $act['id'];
		echo '</td>';
		echo '<td "list-group-item list-group-item-action"">';
		echo $act['descripcion'];
		echo '</td>';
		echo '</tr>';
		echo '</center>';
		}


	}else {
  echo "0 results";
}
	echo '</table>';
	$mysql->close();
	?>	
</body>
</html>