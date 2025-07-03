<?php
/*
$link = new mysqli("localhost", "usisgen", "psisgen", "dbcontavideo");
if ($link->connect_errno) {
    echo "Fallo al conectar a MySQL: (" . $link->connect_errno . ") " . $link->connect_error;
}*/
//echo $link->host_info . "\n";
/*
$link = new mysqli("127.0.0.1", "usisgen", "psisgen", "dbcontavideo", 3306);
if ($link->connect_errno) {
    echo "Fallo al conectar a MySQL: (" . $link->connect_errno . ") " . $link->connect_error;
}*/

//echo $link->host_info . "\n";

// Función para establecer la conexión
function conectarDB() {
    $host = "148.215.18.121";
    $user = "uControlEscolar";
    $pass = "pC0n3scF1#";
    $db = "dbcontrolescolar";
    
    $conn = new mysqli($host, $user, $pass, $db);
    
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }
    
    return $conn;
}

// Usar la función de conexión
$conn = conectarDB();

mysqli_close($conn);
 
 
 
 ?>