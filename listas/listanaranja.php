<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>lista de actividades</title>
	<style type="text/css">
    body {background-image: url(../images/wall.png);
    background-repeat: no-repeat;
    background-size: cover;}
    tr{text-align: center}
  }
  </style>
	<style type="text/css">
	
	* {
  font-family: sans-serif; /* Change your font family */
}

.content-table {
	align-content: center;
	align-items: center;
  border-collapse: collapse;
  margin: 25px 0;
  font-size: 0.9em;
  min-width: 400px;
  border-radius: 5px 5px 0 0;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(161, 124, 221);
}

.content-table thead tr {
  background-image: url(../images/bar_.png);
  color: #A17CDD;
  text-align: left;
  font-weight: bold;
}

.content-table th,
.content-table td {
  padding: 12px 20px;
}

.content-table tbody tr {
  border-bottom: 1px solid #A17CDD;

}

.content-table tbody tr:nth-of-type(even) {
  background-color: #f3f3f3;
}

.content-table tbody tr:last-of-type {
  border-bottom: 2px solid #A17CDD;
}

.content-table tbody tr.active-row {
  font-weight: bold;
  color: #A17CDD;
}

	</style>
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>
	<?php  
	/*<div id="main">
  		<div class="popup">
    		
    		<img src="https://www.developete.com/images/star.png" class="star" alt="">
    		<h1>ERES INCREIBLE!</h1>
    		<input type="text" placeholder="Continúa así ">
    		<a href="" class="button">Cerrar</a>
  		</div>
	</div>*/
	$mysql = new mysqli("localhost", "root", "", "practicas");
		if ($mysql->connect_error)
		die("Problemas con la conexión a la base de datos");

	$actividades = $mysql->query("select evento, id, fecha_inicio, fecha_fin, Terminado from eventoscalendar") or 
		die($mysql->error);

	echo '<center><table class="content-table" align="center">';
	
	echo '<tr><th>Id</th><th>Actividad</th><th>Fecha Inicio</th><th>Fecha Final</th></tr>';
		while ($act = $actividades->fetch_array()) {			
		echo '<center>';
		echo '<tr>';
		echo '<td "list-group-item list-group-item-action"">';
		echo $act['id'];
		echo '</td>';
		echo '<td "list-group-item list-group-item-action" height="30px">';
		echo $act['evento'];
		echo '</td>';
		echo '<td "list-group-item list-group-item-action"">';
		echo $act['fecha_inicio'];
		echo '</td>';
		echo '<td "list-group-item list-group-item-action"">';
		echo $act['fecha_fin'];
		echo '</td>';
		echo '<td "list-group-item list-group-item-action"">';
		echo '  <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">';
		echo '</td>';
		echo '</tr>';
		echo '</center>';
		}
	echo '</table></center>';
	$mysql->close();
	?>	
	<td width="30px"></td>

</body>
</html>