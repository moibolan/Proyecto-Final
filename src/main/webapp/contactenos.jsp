
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


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

    <link rel="stylesheet" href="css/estilo.css">

    <link rel="stylesheet" href="css/solicitudes.css">
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
                <li><a href="catalogo.html">Cat??logo</a></li>
                <li><a href="#">Acerda de </a>
                    <ul>
                        <li><a href="historia.html">Nuestra Historia</a></li>
                        <li><a href="Mision-vision.html">Misi??n y Visi??n</a></li>
                        <li><a href="visitenos.html">Vis??tenos</a></li>
                    </ul>
                <li><a href="#">Contactenos</a></li>

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

                <li>
                    <a href="html/constuccion/construccion.html" class="btn btn-hover">
                        <span>Ingresar</span>
                    </a>
                    <a href="html/constuccion/construccion.html" class="btn btn-hover">
                        <span>Registraerse</span>
                    </a>
                </li>
            </ul>
            <!-- MOBILE MENU  -->
            <div class="hamburger-menu" id="hamburger-menu">
                <div class="hamburger"></div>
            </div>
        </div>
    </div>
</div>
<!-- END NAV -->

<!--INICIO FORMULARIO-->

<section class="contact-box">
    <div class="row no-gutters bg-dark">
        <div class="col-xl-5 col-lg-12 register-bg">

        </div>
        <div class="col-xl-7 col-lg-12 d-flex">
            <div class="container align-self-center p-6">
                <h1 class="font-weight-bold mb-3">Escribe la consulta</h1>

                <p class="text-muted mb-5">Ingresa la siguiente informaci??n para realizar la solicitud...</p>

                <form id="formulario" name="formulario" onsubmit="validarTodo()" method="post" action="ContactenosServlet" >
                    <div class="form-row mb-2">
                        <div class="form-group col-md-6">
                            <label class="font-weight-bold">Nombre <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="nombre" placeholder="Tu nombre" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label class="font-weight-bold">Apellido <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="apellido" placeholder="Tu apellido">
                        </div>
                    </div>
                    <div class="form-group mb-3">
                        <label class="font-weight-bold">Correo electr??nico <span class="text-danger">*</span></label>
                        <input  class="form-control" placeholder="Ingresa tu correo electr??nico" id="correo" name="correo" required >
                    </div>


                    <div class="form-group mb-3">
                        <input class="form-check-input" type="checkbox" id="hide" name="descuento" checked>
                        <label class="font-weight-bold">Tarjeta de miembro <span class="text-danger">*</span></label>
                        <input type="text" class="form-control"  id="tarjeta" maxlength="8" name="tarjeta" placeholder="Ingresa su n??mero de tarjeta">
                    </div>

                    <div class="form-group mb-3">
                        <label class="font-weight-bold">Tel??fono <span class="text-danger">*</span></label>
                        <input type="number" class="form-control" placeholder="Ingresa tu tel??fono"  maxlength="8"   name="telefono"  oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);">
                    </div>


                    <fieldset>
                        <div id="comentario">
                            <label>
                                Informaci??n adicional:
                            </label>
                            <textarea class="form-control-lg" cols="50" rows="7" maxlength="255" name="informacion" id="informacion">
                </textarea>
                        </div>
                    </fieldset>


                    <fieldset class="botones">
                        <input type="submit" value="Procesar" name="btnEnviar" class="btn btn-primary width-100">
                        <input type="reset" value="Limpiar formulario"  class="btn btn-secondary" name="btnLimpiar">
                        <button type="button" class="btn btn-danger"> Cancelar </button>
                    </fieldset>



                </form>
                <small class="d-inline-block text-muted mt-5">Todos los derechos reservados | ?? 2021</small>
            </div>
        </div>
    </div>
</section>

<!--FINAL FORMULARIO-->



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
                                <li><a href="#">Canjear c??digo</a></li>
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

<script src="js/url.js"></script>
<!-- APP SCRIPT -->
<script src="js/app.js"></script>
<script src="js/validacionFormulario.js"></script>
</body>
</html>
