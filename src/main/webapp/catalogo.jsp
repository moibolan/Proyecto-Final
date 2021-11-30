<%--
  Created by IntelliJ IDEA.
  User: moise
  Date: 11/29/2021
  Time: 9:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- GOOGLE FONTS -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;700;900&display=swap" rel="stylesheet">
    <!-- OWL CAROUSEL -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" />
    <!-- BOX ICONS -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>

    <!--    INICIO-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
    <!--FINAL-->

    <!-- Required meta tags -->



    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">


    <link rel="stylesheet" href="css/estilo.css">
    <link rel="stylesheet" href="css/grid.css">
    <title>Illusion Films</title>


</head>

<body>

<!-- NAV -->
<div class="nav-wrapper">
    <div class="container">
        <div class="nav">
            <a href="#" class="logo">
                <img src="img/IllusionLogo.png" alt="Illusion-Logo" />
            </a>
            <ul class="nav-menu" id="nav-menu">
                <li><a href="home.html">Inicio</a></li>
                <li><a href="#">Catálogo</a></li>
                <li><a href="#">Acerda de </a>
                    <ul>
                        <li><a href="historia.html">Nuestra Historia</a></li>
                        <li><a href="Mision-vision.html">Misión y Visión</a></li>
                        <li><a href="visitenos.html">Visítenos</a></li>
                    </ul>
                <li><a href="contactenos.jsp">Contactenos</a></li>

                <li>
                    <div class="searchItem">
                        <div class="search">
                            <label>
                                <input type="text" placeholder="type to search">
                            </label>
                            <i class="fas fa-search"></i>
                        </div>
                    </div>

                </li>
            </ul>
            <div class="btn-group">
                <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    ${sessionScope.usuario.getNombre()}
                </button>
                <div  class="dropdown-menu">
                    <a class="dropdown-item" href="#">${sessionScope.usuario.getRol()}</a>
                    <a class="dropdown-item" href="#">${sessionScope.usuario.getUsuario()}</a>
                    <div class="dropdown-divider"></div>
                    <form class="dropdown-item" method="GET" action="LogoutServlet">
                        <button class="btn btn-danger center-block" type="submit" name="LogoutServlet" value="Salir">Cerrar Sesion</button>
                    </form>
                </div>
            </div>


            <!-- MOBILE MENU  -->
            <div class="hamburger-menu" id="hamburger-menu">
                <div class="hamburger"></div>
            </div>
        </div>
    </div>
</div>
<!-- END NAV -->


<!--INICIO-->

<form action="ControladorCarrito?menu=admPeliculas" method="POST">

    <input id="usuarioID" name="usuarioID" type="hidden" value="${sessionScope.usuario.getId()}">
    <!-- movie list start -->
    <div class="movieContainer">
        <div class="section-header">
            ACCIÓN
        </div>
        <div class="movieList">

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id ="335983">
                    <a href="solicitudes.jsp?nombre=Venom&precio=3000">
                        <input  name="peliculaID" type="hidden" value="1">
                        <input  name="tituloID" type="hidden" value="Venom">
                        <input  name="precioID" type="hidden" value="4500">



                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <div class="box">
                    <input type="number" class="form-control" min="1" pattern="^[0-9]+" name="cantidad">

                </div>
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Final Pelicula-->



            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id =634649>
                    <a href="solicitudes.jsp?nombre=Spiderman&precio=5000">
                        <input  name="peliculaID" type="hidden" value="2">
                        <input name="tituloID" type="hidden" value="Spiderman">
                        <input  name="precioID" type="hidden" value="5000">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <div class="box">
                    <input type="number" class="form-control "min="1" pattern="^[0-9]+"  >
                </div>
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>



            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id =272>
                    <a href="solicitudes.jsp?nombre=Batman&precio=2500">
                        <input  name="peliculaID" type="hidden" value="3">
                        <input  name="tituloID" type="hidden" value="BatmanBegins">
                        <input  name="precioID" type="hidden" value="2500">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <div class="box">
                    <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                </div>
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" min="1" max="30" >
                </div>
            </div>

            <!-- Final Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id =24>
                    <a href="solicitudes.jsp?nombre=Kill Bill&precio=3200">
                        <input  name="peliculaID" type="hidden" value="4">
                        <input  name="tituloID" type="hidden" value="KillBill">
                        <input  name="precioID" type="hidden" value="3200">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <div class="box">
                    <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                </div>
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Final Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id =680>
                    <a href="solicitudes.jsp?nombre=Pulp Fiction&precio=2800.">
                        <input  name="peliculaID" type="hidden" value="5">
                        <input  name="tituloID" type="hidden" value="PulpFiction">
                        <input  name="precioID" type="hidden" value="2800">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <div class="box">
                    <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                </div>
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Final Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id =503736>
                    <a href="solicitudes.jsp?nombre=Army of Death&precio=1500">
                        <input  name="peliculaID" type="hidden" value="6">
                        <input  name="tituloID" type="hidden" value="Army">
                        <input  name="precioID" type="hidden" value="1500">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control"  min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Final Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id =603692>
                    <a href="solicitudes.jsp?nombre=John Wick&precio=3100">
                        <input  name="peliculaID" type="hidden" value="7">
                        <input  name="tituloID" type="hidden" value="JohnWick">
                        <input  name="precioID" type="hidden" value="3100">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Final Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id =218>
                    <a href="solicitudes.jsp?nombre=Terminator&precio=1800">
                        <input  name="peliculaID" type="hidden" value="8">
                        <input  name="tituloID" type="hidden" value="Terminator">
                        <input  name="precioID" type="hidden" value="1800">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Final Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id =438799>
                    <a href="solicitudes.jsp?nombre=Overlord&precio=1000">
                        <input  name="peliculaID" type="hidden" value="9">
                        <input  name="tituloID" type="hidden" value="Overlord">
                        <input  name="precioID" type="hidden" value="1000">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Final Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 7555>
                    <a href="solicitudes.jsp?nombre=Rambo&precio=2250">
                        <input  name="peliculaID" type="hidden" value="10">
                        <input  name="tituloID" type="hidden" value="Rambo">
                        <input  name="precioID" type="hidden" value="2250">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Final Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 24428 >
                    <a href="solicitudes.jsp?nombre=Avengers&precio=3000">
                        <input  name="peliculaID" type="hidden" value="11">
                        <input  name="tituloID" type="hidden" value="Avengers">
                        <input  name="precioID" type="hidden" value="3000">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Final Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 602223>
                    <a href="solicitudes.jsp?nombre=The Purge&precio=1600">
                        <input  name="peliculaID" type="hidden" value="12">
                        <input  name="tituloID" type="hidden" value="Purge">
                        <input  name="precioID" type="hidden" value="1600">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Final Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 260346>
                    <a href="solicitudes.jsp?nombre=Taken&precio=2300">
                        <input  name="peliculaID" type="hidden" value="13">
                        <input  name="tituloID" type="hidden" value="Taken">
                        <input  name="precioID" type="hidden" value="2300">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Final Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 180299>
                    <a href="solicitudes.jsp?nombre=The Raid&precio=2500">
                        <input  name="peliculaID" type="hidden" value="14">
                        <input  name="tituloID" type="hidden" value="Raid">
                        <input  name="precioID" type="hidden" value="2500">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Final Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 9461>
                    <a href="solicitudes.jsp?nombre=Enter The Dragon&precio=3500">
                        <input  name="peliculaID" type="hidden" value="15">
                        <input  name="tituloID" type="hidden" value="Dragon">
                        <input  name="precioID" type="hidden" value="3500">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Final Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 10195>
                    <a href="solicitudes.jsp?nombre=Thor&precio=1400">
                        <input  name="peliculaID" type="hidden" value="16">
                        <input  name="tituloID" type="hidden" value="Thor">
                        <input  name="precioID" type="hidden" value="1400">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Final Pelicula-->

        </div>
    </div>


    <!--INICIO-2-->

    <div class="movieContainer">
        <div class="section-header">
            Mejor valoradas
        </div>

        <!-- Inicio Pelicula-->

        <div class="movieList">
            <div class="movieItem">
                <div class="image" id = 566525>
                    <a href="solicitudes.jsp?nombre=Shang-chi&precio=2600">
                        <input  name="peliculaID" type="hidden" value="17">
                        <input  name="tituloID" type="hidden" value="Shang">
                        <input  name="precioID" type="hidden" value="2600">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 370172>
                    <a href="solicitudes.jsp?nombre=No time to die&precio=1500">
                        <input  name="peliculaID" type="hidden" value="18">
                        <input  name="tituloID" type="hidden" value="NoTime">
                        <input  name="precioID" type="hidden" value="1500">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 580489 >
                    <a href="solicitudes.jsp?nombre=Venom 2&precio=4500">
                        <div class="image__overlay">
                            <input  name="peliculaID" type="hidden" value="19">
                            <input  name="tituloID" type="hidden" value="Venom2">
                            <input  name="precioID" type="hidden" value="4500">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 522402>
                    <a href="solicitudes.jsp?nombre=Finch&precio=1400">
                        <input  name="peliculaID" type="hidden" value="20">
                        <input  name="tituloID" type="hidden" value="KillBill">
                        <input  name="precioID" type="hidden" value="1400">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 763164>
                    <a href="solicitudes.jsp?nombre=Apex&precio=3200">
                        <input  name="peliculaID" type="hidden" value="21">
                        <input  name="tituloID" type="hidden" value="Apex">
                        <input  name="precioID" type="hidden" value="3200">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 885110>
                    <a href="solicitudes.jsp?nombre=Amina&precio=1900">
                        <input  name="peliculaID" type="hidden" value="22">
                        <input  name="tituloID" type="hidden" value="Amina">
                        <input  name="precioID" type="hidden" value="1900">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 512195>
                    <a href="solicitudes.jsp?nombre=Alerta Roja&precio=3250">
                        <input  name="peliculaID" type="hidden" value="23">
                        <input  name="tituloID" type="hidden" value="AlertaRoja">
                        <input  name="precioID" type="hidden" value="3250">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control"  min="1" pattern="^[0-9]+">
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->
            <div class="movieItem">
                <div class="image" id = 524434>
                    <a href="solicitudes.jsp?nombre=Eternals&precio=5000">
                        <input  name="peliculaID" type="hidden" value="24">
                        <input  name="tituloID" type="hidden" value="Eternals">
                        <input  name="precioID" type="hidden" value="5000">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 796499>
                    <a href="solicitudes.jsp?nombre=Ejercito de ladrones&precio=2000">
                        <input  name="peliculaID" type="hidden" value="25">
                        <input  name="tituloID" type="hidden" value="Thieves">
                        <input  name="precioID" type="hidden" value="2000">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->
            <div class="movieItem">
                <div class="image" id = 438631>
                    <a href="solicitudes.jsp?nombre=Dune&precio=4000">
                        <input  name="peliculaID" type="hidden" value="26">
                        <input  name="tituloID" type="hidden" value="Dune">
                        <input  name="precioID" type="hidden" value="4000">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->
            <div class="movieItem">
                <div class="image" id = 550988>
                    <a href="solicitudes.jsp?nombre=Free Guy&precio=1500">
                        <input  name="peliculaID" type="hidden" value="27">
                        <input  name="tituloID" type="hidden" value="FreeGuy">
                        <input  name="precioID" type="hidden" value="1500">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->
            <div class="movieItem">
                <div class="image" id = 714968>
                    <a href="solicitudes.jsp?nombre=Plan A&precio=1900">
                        <input  name="peliculaID" type="hidden" value="28">
                        <input  name="tituloID" type="hidden" value="PlanA">
                        <input  name="precioID" type="hidden" value="1900">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->
            <div class="movieItem">
                <div class="image" id = 854442>
                    <a href="solicitudes.jsp?nombre=Next-Door Nightmare&precio=2500">
                        <input  name="peliculaID" type="hidden" value="29">
                        <input  name="tituloID" type="hidden" value="Nightmare">
                        <input  name="precioID" type="hidden" value="2500">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->
            <div class="movieItem">
                <div class="image" id = 568620>
                    <a href="solicitudes.jsp?nombre=Snake Eyes: El origen&precio=1600">
                        <input  name="peliculaID" type="hidden" value="30">
                        <input  name="tituloID" type="hidden" value="Snake">
                        <input  name="precioID" type="hidden" value="1600">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control"  min="1" pattern="^[0-9]+">
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->
            <div class="movieItem">
                <div class="image" id = 635302>
                    <a href="solicitudes.jsp?nombre=Kimetsu no Yaiba&precio=2700">
                        <input  name="peliculaID" type="hidden" value="31">
                        <input  name="tituloID" type="hidden" value="DemonSlayer">
                        <input  name="precioID" type="hidden" value="2700">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 436969>
                    <a href="solicitudes.jsp?nombre=Suicide Squad&precio=2000">
                        <input  name="peliculaID" type="hidden" value="32">
                        <input  name="tituloID" type="hidden" value="SuicideSquad">
                        <input  name="precioID" type="hidden" value="2000">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->
        </div>
    </div>
    <!--FINAL-2-->


    <!--INICIO-3-->

    <div class="movieContainer">
        <div class="section-header">
            Romance
        </div>

        <!-- Inicio Pelicula-->
        <div class="movieList">
            <div class="movieItem">
                <div class="image" id = 296096>
                    <a href="solicitudes.jsp?nombre=Me before you&precio=2400">
                        <input  name="peliculaID" type="hidden" value="33">
                        <input  name="tituloID" type="hidden" value="BeforeYou">
                        <input  name="precioID" type="hidden" value="2400">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control"  min="1" pattern="^[0-9]+">
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>
            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->
            <div class="movieItem">
                <div class="image" id = 372058>
                    <a href="solicitudes.jsp?nombre=Your Name&precio=3000">
                        <input  name="peliculaID" type="hidden" value="34">
                        <input  name="tituloID" type="hidden" value="YourName">
                        <input  name="precioID" type="hidden" value="3000">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>
            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 313369>
                    <a href="solicitudes.jsp?nombre=La la land&precio=2500">
                        <input  name="peliculaID" type="hidden" value="35">
                        <input  name="tituloID" type="hidden" value="Lalaland">
                        <input  name="precioID" type="hidden" value="2500">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control"  min="1" pattern="^[0-9]+">
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id= 568160>
                    <a href="solicitudes.jsp?nombre=Weathering with you&precio=1900">
                        <input  name="peliculaID" type="hidden" value="36">
                        <input  name="tituloID" type="hidden" value="Weathering">
                        <input  name="precioID" type="hidden" value="1900">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 572154>
                    <a href="solicitudes.jsp?nombre=Seishun Buta Yarou wa Bunny Girl Senpai no Yume wo Minai&precio=2000">
                        <input  name="peliculaID" type="hidden" value="37">
                        <input  name="tituloID" type="hidden" value="Seishun">
                        <input  name="precioID" type="hidden" value="2000">

                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 744275 >
                    <a href="solicitudes.jsp?nombre=After&precio=500">
                        <input  name="peliculaID" type="hidden" value="38">
                        <input  name="tituloID" type="hidden" value="After">
                        <input  name="precioID" type="hidden" value="500">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>
            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 222935>
                    <a href="solicitudes.jsp?nombre=The fault in our stars&precio=3000">
                        <input  name="peliculaID" type="hidden" value="39">
                        <input  name="tituloID" type="hidden" value="Weathering">
                        <input  name="precioID" type="hidden" value="1900">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+">
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 112949>
                    <a href="solicitudes.jsp?nombre=Safe haven&precio=1400">
                        <input  name="peliculaID" type="hidden" value="40">
                        <input  name="tituloID" type="hidden" value="Safe">
                        <input  name="precioID" type="hidden" value="1400">
                        <div class="image__overlay">
                        <p class="image__description">Comprar<br>o<br>Rentar</p>
                    </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 667520>
                    <a href="solicitudes.jsp?nombre=A whisker away&precio=2000">
                        <input  name="peliculaID" type="hidden" value="41">
                        <input  name="tituloID" type="hidden" value="Wisker">
                        <input  name="precioID" type="hidden" value="2000">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 378064>
                    <a href="solicitudes.jsp?nombre=A silent voice&precio=2500">
                        <input  name="peliculaID" type="hidden" value="42">
                        <input  name="tituloID" type="hidden" value="SilentVoice">
                        <input  name="precioID" type="hidden" value="2500">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 4348>
                    <a href="solicitudes.jsp?nombre=Pride and prejudice&precio=3000">
                        <input  name="peliculaID" type="hidden" value="43">
                        <input  name="tituloID" type="hidden" value="PridePrejudice">
                        <input  name="precioID" type="hidden" value="3000">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 249164>
                    <a href="solicitudes.jsp?nombre=If i stay&precio=1600">
                        <input  name="peliculaID" type="hidden" value="44">
                        <input  name="tituloID" type="hidden" value="Stay">
                        <input  name="precioID" type="hidden" value="1600">
                        <div class="image__overlay">
                        <p class="image__description">Comprar<br>o<br>Rentar</p>
                    </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>

            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 504253>
                    <a href="solicitudes.jsp?nombre=I want to eat your pancreas&precio=3000">
                        <input  name="peliculaID" type="hidden" value="45">
                        <input  name="tituloID" type="hidden" value="Pancreas">
                        <input  name="precioID" type="hidden" value="3000">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 652837>
                    <a href="solicitudes.jsp?nombre=Josee the Tiger and the Fish&precio=1200">
                        <input  name="peliculaID" type="hidden" value="46">
                        <input  name="tituloID" type="hidden" value="Tiger">
                        <input  name="precioID" type="hidden" value="1200">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 702928>
                    <a href="solicitudes.jsp?nombre=Remember me&precio=2200">
                        <input  name="peliculaID" type="hidden" value="47">
                        <input  name="tituloID" type="hidden" value="Remember">
                        <input  name="precioID" type="hidden" value="2200">
                        <div class="image__overlay">
                            <p class="image__description">Comprar<br>o<br>Rentar</p>
                        </div></a>
                </div>
                <input type="number" class="form-control" min="1" pattern="^[0-9]+"  >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>
            </div>

            <!-- Fin Pelicula-->

            <!-- Inicio Pelicula-->

            <div class="movieItem">
                <div class="image" id = 518527>
                    <a href="solicitudes.jsp?nombre=Harry and meghan&precio=2100">
                        <input  name="peliculaID" type="hidden" value="48">
                        <input  name="tituloID" type="hidden" value="Harry">
                        <input  name="precioID" type="hidden" value="2100">
                        <div class="image__overlay">
                        <p class="image__description">Comprar<br>o<br>Rentar</p>
                    </div></a>

                </div>
                <input type="number" class="form-control"min="1" pattern="^[0-9]+" >
                <div>
                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                </div>

                <!-- Fin Pelicula-->

            </div>
        </div>
    </div>
</form>
<!--FINAL-3-->
<%--TABLA CARRITO INICIO--%>

<div class="col-md-7">
    <table class="table table-dark" >
        <thead>
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

        <c:forEach var="producto" items="${productos}">

            <tr>

                <th scope="row">${producto.getIdproducto()}</th>
                <td>${producto.getIdcliente()}</td>
                <td>${producto.getIdpelicula()}</td>
                <td>${producto.getTitulo()}</td>
                <td>${producto.getCantidad()}</td>
                <td>${producto.getPrecio()}</td>

                <td>

                    <a class="btn btn-danger" href="ControladorCarrito?menu=admPeliculas&accion=Eliminar&id=${producto.getIdproducto()}">Eliminar</a>
                </td>

            </tr>
        </c:forEach>


        </tbody>
    </table>
</div>




<%--TABLE CARRITO FIN--%>



<!-- FOOTER SECTION -->
<footer class="section">
    <div class="container">
        <div class="row">
            <div class="col-4 col-md-6 col-sm-12">
                <div class="content">
                    <a href="#" class="logo">
                        <img src="img/IllusionLogo.png" alt="Illusion-Logo" />
                    </a>


                </div>
            </div>
            <div class="col-8 col-md-6 col-sm-12">
                <div class="row">
                    <div class="col-3 col-md-6 col-sm-6">
                        <div class="content">

                            <ul class="footer-menu">
                                <li><a href="#">Preguntas frecuentes</a></li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-3 col-md-6 col-sm-6">
                        <div class="content">
                            <ul class="footer-menu">
                                <li><a href="#">Contacto</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-3 col-md-6 col-sm-6">
                        <div class="content">
                            <ul class="footer-menu">
                                <li><a href="#">Canjear código</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-3 col-md-6 col-sm-6">
                        <div class="content">
                            <ul class="footer-menu">
                                <li><a href="#">Aviso legal</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-3 col-md-6 col-sm-6">
                        <div class="content">
                            <ul class="footer-menu">
                                <li><a href="#">Prensa</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="social-list">
                        <a href="#" class="social-item">
                            <i class="bx bxl-facebook"></i>
                        </a>
                        <a href="#" class="social-item">
                            <i class="bx bxl-twitter"></i>
                        </a>
                        <a href="#" class="social-item">
                            <i class="bx bxl-instagram"></i>
                        </a>
                        <a href="#" class="social-item">
                            <i class="bx bxl-linkedin"></i>
                        </a>

                    </div>

                </div>
            </div>
        </div>
    </div>
</footer>
<!-- END FOOTER SECTION -->

<!-- JQUERY -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<script src="js/app.js"></script>
<script src="js/catalogoTMDB.js"></script>


<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>


</body>

</html>
