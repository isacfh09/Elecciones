<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="">
    <title>Formulario de Votantes</title>
</head>
<body>
    <h1>Formulario</h1>
    <form action="procesar_formulario.php" method="GET">
        <label for="nombre">Nombre:</label>
        <input type="text" name="nombre" ><br>

        <label for="apellido">Apellido:</label>
        <input type text="text" name="apellido" required><br>

        <label for="dni">DNI:</label>
        <input type="number" name="dni"><br>

        <label for="voto">Voto:</label>
        <input type="text" name="voto"><br>

        <label for="mesa">Mesa:</label>
        <input type="text" name="mesa"><br>

        <input type="submit" value="Cargar voto">
    </form>
</body>
</html>
