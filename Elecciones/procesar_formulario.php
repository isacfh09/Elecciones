<?php
$conn = mysqli_connect('localhost', 'root', '', 'elecciones');

if (!$conn) {
    die('Error de conexión:');
}

$nombre = $_GET['nombre'];
$apellido = $_GET['apellido'];
$dni = $_GET['dni'];
$voto = $_GET['voto'];
$mesa = $_GET['mesa'];

$sql = "INSERT INTO id_elecciones(nombre, apellido, dni, voto, mesa) VALUES ('$nombre', '$apellido', '$dni', '$voto', $mesa)";
	if ($conn->query($sql) === TRUE) {
	    echo "voto cargado con éxito.";

		} else {
		    echo "Error al cargar el voto: ";
		}

$sql = "SELECT * FROM id_elecciones";
$resultado = $conn->query($sql);
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="">
    <title>Votantes Registrados</title>
</head>
<body>
    <h1>Votantes Registrados</h1>
    <hr>    
    <table border="2" bgcolor="#ffe6e6">
        <tr>
            <th>Nro. Orden</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>DNI</th>
            <th>Voto</th>
            <th>Mesa</th>
        </tr>

        <?php
        if ($resultado) {
            while ($fila = $resultado->fetch_assoc()) {
                echo '<tr>';
                echo '<td>' . $fila['nro_orden'] . '</td>';
                echo '<td>' . $fila['nombre'] . '</td>';
                echo '<td>' . $fila['apellido'] . '</td>';
                echo '<td>' . $fila['dni'] . '</td>';
                echo '<td>' . $fila['voto'] . '</td>';
                echo '<td>' . $fila['mesa'] . '</td>';
                echo '</tr>';
            }
        } else {
            echo "No hay Votantes registrados.";
        }
        ?>
    </table>
    <a href="formulario.php">Regresar al formulario</a>
</body>
</html>

<?php
$conn->close();
?>

