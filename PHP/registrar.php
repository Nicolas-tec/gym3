<?php
include_once('conexion.php');
$nombre= $_POST['nombre'];
$apellido= $_POST['apellido'];
$correo= $_POST['correo'];
$dirrecion= $_POST['dirrecion'];
$N_usuario= $_POST['N_usuario'];
$clave= $_POST['clave'];
$conectar=conn();
$sql="INSERT INTO usarios (ID, nombre, apellido, correo, dirrecion, N_usuario, clave)
VALUES ('', '$nombre', '$apellido', '$correo', '$dirrecion', '$N_usuario', '$clave')";
$result = mysqli_query($conectar, $sql)or trigger_error("Query Failed! SQL - Error: ".mysqli_error($conectar), E_USER_ERROR);
echo "$sql";
?>