<?php
// ruta/a/tu/script.php
function Conectarse()
{
    
    $servername  = "148.215.18.121";
    $username    = "uControlEscolar";
    $password    ="pC0n3scF1#";
    $dbname      = "dbcontrolescolar"; 
    if (!($link = mysqli_connect($servername, $username, $password, $dbname)))       
    {
        echo "Error de conexión: " . mysqli_connect_error();
       die("Connection failed: " . mysqli_connect_error());
    }else{
             echo "Conexion Exitosa";
             return $link;
         }
   
    
 }
 
// Configuración de la base de datos
//$host = "148.215.18.121"; // Cambia esto si es necesario
//$user = "uControlEscolar"; // Cambia esto por tu usuario de base de datos
//$pass = "pC0n3scF1#"; // Cambia esto por tu contraseña de base de datos
//$db = "dbcontrolescolar"; // Cambia esto por el nombre de tu base de datos

// Crear conexión
$conn = Conectarse(); //new mysqli($host, $user, $pass, $db);

// Obtener el parámetro 'cuenta' de la URL
$cuenta = $_GET['cuenta'];
// Preparar y ejecutar la consulta
$sql = "SELECT * FROM fichas WHERE nombre = ?";

$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $cuenta);
$stmt->execute();
$result = $stmt->get_result();
// Obtener los datos
$datos = [];
while ($row = $result->fetch_assoc()) {
    $datos[] = $row;
}

// Devolver los datos en formato JSON
header('Content-Type: application/json');
echo json_encode($datos ?: []);

// Cerrar la conexión
$stmt->close();
$conn->close();
?>