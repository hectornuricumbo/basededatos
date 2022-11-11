<?php
require("./conexion.php");
if (!empty($_POST["btnIngresar"])) { 
    //echo "Campos vacíos";
    if (empty($_POST["userName"]) and empty($_POST["password"])){
        echo '<div class = "alert alert-danger"> Los Campos estan vacios</div>';
    }else {
        $usuario=$_POST["usuario"];
        $password=$_POST["pass"];
        $sql=$conn->query(" select * from login where usuario='$usuario' and nip='$password' ");
        if ($datos=$sql->fetch_object()) {
            header("location: ./src/vistas/menuprincipal.html");
            
        }else {
            echo '<div class="alert alert-danger">ACCESO DENEGADO</div>';
        }
    }
}
    mysqli_close($conn);
?>