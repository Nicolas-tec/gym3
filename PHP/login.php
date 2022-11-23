<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "gym";
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
if (!$conn){
    die("conexion fallida".mysqli_connect_error());
}
$nombre = $_POST["nombre"];
$clave = $_POST["clave"];
$query = mysqli_query($conn,"SELECT * FROM usarios WHERE N_usuario = '".$nombre."' and clave = '".$clave."'");
$nr = mysqli_num_rows($query);
if($nr == 1){
    //header("menu.html");
    echo "bienvenido:" .$nombre;
}
else if($nr == 0){
    echo "acceso denegado";
} 
?>