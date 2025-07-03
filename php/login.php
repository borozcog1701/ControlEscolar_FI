<?php
// Configuración de la base de datos
// Configuración de la base de datos
$host = "148.215.18.121"; // Cambia esto si es necesario
$user = "uControlEscolar"; // Cambia esto por tu usuario de base de datos
$pass = "pC0n3scF1#"; // Cambia esto por tu contraseña de base de datos
$db = "dbcontrolescolar"; // Cambia esto por el nombre de tu base de datos

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener datos del formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $usuario = $_POST['usuario'];
    $contrasena = md5($_POST['contrasena']); // Encriptar la contraseña con MD5

    // Consulta a la base de datos
    $sql = "SELECT * FROM usuarios WHERE username  = ? AND password = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $usuario, $contrasena);
    $stmt->execute();
    $result = $stmt->get_result();

    // Verificar si hay un usuario coincidente
    if ($result->num_rows > 0) {
        echo "Inicio de sesión exitoso.";
        header("Location: ../admin.html"); // Redirigir a admin.html
        exit(); // Asegurarse de que no se ejecute más código después de la redirección
    } else {
        echo "Usuario o contraseña incorrectos.";
    }

    $stmt->close();
}

$conn->close();
?>
