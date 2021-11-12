
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="Cliente" scope="request" class="com.progra.proyecto.bl.entities.Cliente"/>

<html >
<head>
    <meta charset="UTF-8">
    <title>Illusion Films</title>


    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <meta name="viewport" content="width=device-width, initial-scale=1.0">



    <!--    INICIO-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
    <!--FINAL-->

    <link rel="stylesheet" href="css/table/estiloTabla.css">
</head>

<body>

<div class="alert alert-success" role="alert">
    Su solicitud fue procesada con éxito!
</div>
<div class="container">
    <table>
        <thead>
        <tr>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Correo</th>
            <th>Tarjeta</th>
            <th>Telefono</th>
            <th>Preferencias</th>
            <th>Información</th>
            <th>Cantidad</th>
            <th>Nombre película</th>
            <th>Precio</th>
            <th>Descuento</th>
            <th>Total</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><%=Cliente.getNombre()%></td>
            <td><%=Cliente.getApellido()%></td>
            <td><%=Cliente.getCorreo()%></td>
            <td><%=Cliente.getTarjeta()%></td>
            <td><%=Cliente.getTelefono()%></td>
            <td><%=Cliente.getPreferencias()%></td>
            <td><%=Cliente.getInformacion()%></td>
            <td><%=Cliente.getCantidad()%></td>
            <td><%=Cliente.getNombrePelicula()%></td>
            <td><%=Cliente.getPrecioPelicula()%></td>
            <td><%=Cliente.getDescuentoPelicula()%></td>
            <td><%=Cliente.calcularTotal()%></td>

<%--            <td>Cell 2</td>--%>
<%--            <td>Cell 3</td>--%>
<%--            <td>Cell 4</td>--%>
<%--            <td>Cell 5</td>--%>
        </tr>
        <tr>

<%--            <td>Cell 2</td>--%>
<%--            <td>Cell 3</td>--%>
<%--            <td>Cell 4</td>--%>
<%--            <td>Cell 5</td>--%>
        </tr>
        <tr>

<%--            <td>Cell 2</td>--%>
<%--            <td>Cell 3</td>--%>
<%--            <td>Cell 4</td>--%>
<%--            <td>Cell 5</td>--%>
        </tr>
        <tr>

<%--            <td>Cell 2</td>--%>
<%--            <td>Cell 3</td>--%>
<%--            <td>Cell 4</td>--%>
<%--            <td>Cell 5</td>--%>
        </tr>
        <tr>

<%--            <td>Cell 2</td>--%>
<%--            <td>Cell 3</td>--%>
<%--            <td>Cell 4</td>--%>
<%--            <td>Cell 5</td>--%>
        </tr>

        <%--            <td>Cell 2</td>--%>
        <%--            <td>Cell 3</td>--%>
        <%--            <td>Cell 4</td>--%>
        <%--            <td>Cell 5</td>--%>
        </tr>


        <%--            <td>Cell 2</td>--%>
        <%--            <td>Cell 3</td>--%>
        <%--            <td>Cell 4</td>--%>
        <%--            <td>Cell 5</td>--%>
        </tr>

        <%--            <td>Cell 2</td>--%>
        <%--            <td>Cell 3</td>--%>
        <%--            <td>Cell 4</td>--%>
        <%--            <td>Cell 5</td>--%>
        </tr>

        <%--            <td>Cell 2</td>--%>
        <%--            <td>Cell 3</td>--%>
        <%--            <td>Cell 4</td>--%>
        <%--            <td>Cell 5</td>--%>
        </tr>

        </tr>

        <%--            <td>Cell 2</td>--%>
        <%--            <td>Cell 3</td>--%>
        <%--            <td>Cell 4</td>--%>
        <%--            <td>Cell 5</td>--%>
        </tr>

        <%--            <td>Cell 2</td>--%>
        <%--            <td>Cell 3</td>--%>
        <%--            <td>Cell 4</td>--%>
        <%--            <td>Cell 5</td>--%>
        </tr>

        <%--            <td>Cell 2</td>--%>
        <%--            <td>Cell 3</td>--%>
        <%--            <td>Cell 4</td>--%>
        <%--            <td>Cell 5</td>--%>
        </tr>



        </tbody>



    </table>
</div>
<fieldset>
    <input type="button" value="Volver a Inicio" onclick="location.href='home.html';" name="btnFinalizar" class="btn btn-primary width-100">

</fieldset>

</body>
</html>
