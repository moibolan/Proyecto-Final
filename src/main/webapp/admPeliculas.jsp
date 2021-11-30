<%--
  Created by IntelliJ IDEA.
  User: moise
  Date: 11/15/2021
  Time: 11:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <title>Administrador</title>
</head>
<body>
<div class="row">
    <div class="card col-md-4">
        <div class="card-body">
            <h5 class="card-title">Peliculas</h5>
            <h6 class="card-subtitle mb-2 text-muted">En este panel podras gestionar los datos de las peliculas.</h6>
            <div>
                <form action="Controlador?menu=admPeliculas" method="POST">

                    <div class="form-group">
                        <label>Titulo</label>
                        <input type="text" class="form-control" name="titulo" value="${peliculaSeleccionada.getTitulo()}">
                    </div>


                    <div class="form-group">
                        <label>Descripcion</label>
                        <input type="text" class="form-control" name="descripcion" value="${peliculaSeleccionada.getDescripcion()}">
                    </div>

                    <div class="form-group">
                        <label>Genero</label>
                        <input type="number" class="form-control" name="genero" value="${peliculaSeleccionada.getGenero()}">
                    </div>

                    <div class="form-group">
                        <label>Director</label>
                        <input type="text" class="form-control" name="director" value="${peliculaSeleccionada.getDirector()}">
                    </div>


                    <div class="form-group">
                        <label>Año</label>
                        <input type="text" class="form-control" name="anno" value="${peliculaSeleccionada.getAnno()}">
                    </div>



                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                    <input type="submit" class="btn btn-success" name="accion" value="Actualizar" >
                </form>


                <%--  AQUI INICIA EL FORMULARIO PARA AGREGAR PELICULAS CON LA API --%>
                <h6> </h6>

                <h6 class="card-subtitle mb-2 text-muted">En este panel podras agregar una pelicula mediante un id automaticamente.</h6>



                <form action="Controlador?menu=admPeliculas" method="POST">

                        <div class="form-group">
                            <label>ID Pelicula</label>
                            <input type="number" class="form-control" name="idTMDB" value="">
                        </div>

                    <input type="submit" class="btn btn-primary" name="accion" value="AgregarAPI">


                </form>

                <%--  AQUI TERMINA --%>


            </div>
        </div>
    </div>

    <div class="col-md-7">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">id</th>
                <th scope="col">Titulo</th>
                <th scope="col">Descripcion</th>
                <th scope="col">Genero</th>
                <th scope="col">Director</th>
                <th scope="col">Año</th>
                <th scope="col">Acciones</th>

            </tr>
            </thead>
            <tbody>

            <c:forEach var="pelicula" items="${peliculas}">

                <tr>

                    <th>${pelicula.getId()}</th>
                    <td>${pelicula.getTitulo()}</td>
                    <td>${pelicula.getDescripcion()}</td>
                    <td>${pelicula.getGenero()}</td>
                    <td>${pelicula.getDirector()}</td>
                    <td>${pelicula.getAnno()}</td>

                    <td>
                        <a class="btn btn-warning" href="Controlador?menu=admPeliculas&accion=Cargar&id=${pelicula.getId()}">Editar</a>
                        <a class="btn btn-danger" href="Controlador?menu=admPeliculas&accion=Eliminar&id=${pelicula.getId()}">Eliminar</a>
                    </td>

                </tr>
            </c:forEach>


            </tbody>
        </table>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

</div>
</body>
</html>