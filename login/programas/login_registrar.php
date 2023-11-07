<?php 
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "practicas";

$conn = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);

if (!$conn) {
	die("No hay conexion:" . mysqli_connect_error());
}

$nombre = isset($_POST["usuario"]);
$pass = isset($_POST["password"]);

//login
if (isset($_POST["btningresar"])) {
	$query = mysqli_query($conn,"SELECT * FROM estudiantes WHERE usuario = '$nombre' AND password='$pass'");
	$nr = mysqli_num_rows($query);

	if ($nr==1) {
		echo "<script> alert('Bienvenido $nombre'); window.location='../index.php' </script>";
	} else {
		echo "<script> alert('Usuario no existe'); window.location='../login.html' </script>";
	}
}
//Registrar
if (isset($_POST["btnregistrar"])) {
	$sqlgrabar = "INSERT INTO usuarios(usuario, password) values ('$nombre', '$pass')";

	if (mysqli_query($conn,$sqlgrabar)) {
		echo "<script> alert('Usuario registrado con exito: $nombre'); window.location='../index.html' </script>";
	} else {
		echo "Error: ". $sql. "<br>". mysql_error($conn); 
	}
}

?>
