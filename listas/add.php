<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Lista de Tareas</title>
</head>
<body>
	<h1 align="center">Add your activities </h1>
		<form action="26panel_agregar_alta.php" method="POST">
			<table border="1" align="center">
				<tr>
					<td>Write down your tasks:</td>
					<td><input type="text" name="descripcion" required></td>
				</tr>
				<tr>
					<td>Select level:</td>
					<td><select name="nivel">
						<?php 	 
						$mysql = new mysqli("localhost", "root", "", "practicas");
							if ($mysql->connect_error) 
							die("Problemas de conexion con la base de datos");

						$registros = $mysql->query("select id, descripcion from nivel") or 
						die($mysql->error);
						while ($reg = $registros->fetch_array()) {
							echo "<option value=\"". $reg2 ['id'] . "\">". $reg2['descripcion'] . "</option>"; 
						}

						?>
					</select></td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<input type="submit" value="Confirm">
					</td>
				</tr>
			</table>
		</form>
</body>
</html>