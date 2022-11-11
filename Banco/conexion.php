<?php
$servername = "localhost";
$database = "bdbanco";
$username = "root";
$password = "KjLZptK5SnD#H75";
// Crear conexión
$conn = new mysqli($servername, $username, $password, $database);

if (!$conn) {
die("Conexión Fallida: " . mysqli_connect_error());
}
echo "Conexión Exitosa \n";
?>