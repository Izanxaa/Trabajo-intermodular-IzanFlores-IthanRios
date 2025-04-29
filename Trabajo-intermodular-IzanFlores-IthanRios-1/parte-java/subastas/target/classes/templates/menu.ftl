<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Menú Principal</title>
    <link rel="stylesheet" href="css/styles_form.css">
</head>
<body>

    <div class="container-form">
        <h1>¡Bienvenido ${nombreUsuario}!</h1>
        <p>¿Qué quieres hacer?</p>

        <button onclick="location.href='home'">Ver y Pujar</button>
        <button onclick="location.href='add_product'">Subir Oferta</button>

        <#if tipoUsuario == "Administrador">
            <button onclick="location.href='control_users'">Gestion Usuarios</button>
        </#if>

        <button onclick="location.href='login'">Salir</button>
    </div>
</body>
</html>
