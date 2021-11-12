<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Citi Express - Login </title>

    <title>Title</title>
    <link rel="stylesheet" href="estiloLogin.css">
</head>

<body>
<div class="center">


    <h1>Login</h1>
    <form action="../java/com/progra/proyecto/ui/LoginServlet.java" onsubmit="return validarTodo();">
        <div class="txt_field">
            <input type="text" required id="input_username" name="username">
            <span></span>
            <label>Usuario</label>
        </div>
        <div class="txt_field">
            <input type="password" required id="input_password" name="password">
            <span></span>
            <label>Contraseña</label>
        </div>

        <div class="input_wrap">

            <input type="submit" value="Entrar">
            <div class="container">
                <div class="input_wrap">
                    <span class="error_msg" >Usuario o contraseña incorrectos. Por favor intentelo de nuevo</span>
                </div>
            </div>

        </div>
    </form>
</div>

<script src="js/login.js"></script>

</body>
</html>