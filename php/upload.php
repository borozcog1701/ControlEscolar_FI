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

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_FILES['file'])) {
        $file = $_FILES['file'];
        $uploadDir = 'uploads/';
        $uploadFile = $uploadDir . basename($file['name']);

        // Asegúrate de que el archivo sea válido antes de moverlo
        if ($file['error'] === UPLOAD_ERR_OK) {
            // Mover el archivo a la carpeta de uploads
            if (move_uploaded_file($file['tmp_name'], $uploadFile)) {
                // Obtener datos adicionales del formulario
                $cuenta = $_POST['cuenta']; // Nuevo campo
                $nombre = $_POST['nombre']; // Nuevo campo
                $plan = $_POST['plan']; // Nuevo campo
                $fecha = $_POST['fecha']; // Nuevo campo
                $hora = $_POST['hora']; // Nuevo campo
                $tipo = $_POST['tipo']; // Nuevo campo

                // Preparar la consulta para insertar información en la base de datos
                $stmt = $conn->prepare("INSERT INTO fichas (nombre_archivo, ruta_archivo, nombre, cuenta, plan, fecha, hora, tipo) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
                // echo $stmt; // Se puede comentar o eliminar si no es necesario
                $stmt->bind_param("ssssssss", $file['name'], $uploadFile, $nombre, $cuenta, $plan, $fecha, $hora, $tipo);

                // Ejecutar la consulta
                if ($stmt->execute()) {
                    echo "El archivo ha sido cargado y la información ha sido guardada en la base de datos.";
                } else {
                    echo "Error al guardar la información en la base de datos: " . $stmt->error;
                }

                // Cerrar la declaración
                $stmt->close();
            } else {
                echo "Error al cargar el archivo.";
            }
        } else {
            echo "Error al cargar el archivo: " . $file['error'];
        }
    } else {
        echo "No se ha enviado ningún archivo.";
    }
} else {
    echo "Método no permitido.";
}

// Cerrar la conexión
$conn->close();
?>
