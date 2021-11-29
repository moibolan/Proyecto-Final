<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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


    <%--    Captcha--%>
    <script src="https://www.google.com/recaptcha/api.js"></script>
    <script>
        grecaptcha.ready(() => {
            grecaptcha.render('html_element', {
                'sitekey' : '6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI'
            });
        });
    </script>

    <!--FINAL-->

    <link rel="stylesheet" href="css/estilo.css">

    <link rel="stylesheet" href="css/solicitudes.css">
    <link rel="stylesheet" href="css/grid.css">
    <title>Illusion Films</title>


</head>


<body onload="getQueryVariableName('nombre'),getQueryVariablePrecio('precio')"; >


<!-- NAV -->
<div class="nav-wrapper">
    <div class="container">
        <div class="nav">
            <a href="#" class="logo">
                <img src="img/IllusionLogo.png" alt="Illusion-Logo" />


            </a>
            <ul class="nav-menu" id="nav-menu">
                <li><a href="home.html">Inicio</a></li>
                <li><a href="catalogo.html">Catálogo</a></li>
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

                <li>
                    <a href="html/constuccion/construccion.html" class="btn btn-hover">
                        <span>Ingresar</span>
                    </a>
                    <a href="html/constuccion/construccion.html" class="btn btn-hover">
                        <span>Registrarse</span>
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

<div class="creditCardForm">
    <div class="heading">
        <h1>Confirmar compra</h1>
    </div>
    <div class="payment">
        <form>
                    <div class="form-group owner">
                        <label for="owner">Propietario</label>
                        <input type="text" class="form-control" id="owner">
                    </div>
                    <div class="form-group CVV">
                        <label for="cvv">CVV</label>
                        <input type="text" class="form-control" id="cvv">
                    </div>
                    <div class="form-group mb-5">
                        <div class="form-check">
                            <label for="radioVisa">
                                <input type="radio" id="radioVisa" name=radioTarjeta> VISA
                            </label>
                            <label for="radioAMEX">
                                <input type="radio" id="radioAMEX" name=radioTarjeta> AMEX
                            </label>
                            <label for="radioMasterCard">
                                <input type="radio" id="radioMasterCard" name=radioTarjeta > MASTER CARD
                            </label>
                        </div>
                    </div>
                    <div class="form-group" id="card-number-field">
                        <label for="cardNumber">Numero de tarjeta</label>
                        <input type="text" class="form-control" id="cardNumber">
                    </div>

                    <div class="form-group" id="expiration-date">
                        <label>Fecha de expiracion</label>
                        <select>
                            <option value="01">Enero</option>
                            <option value="02">Febrero </option>
                            <option value="03">Marzo</option>
                            <option value="04">Abril</option>
                            <option value="05">Mayo</option>
                            <option value="06">Junio</option>
                            <option value="07">Julio</option>
                            <option value="08">Agosto</option>
                            <option value="09">Septiembre</option>
                            <option value="10">Octubre</option>
                            <option value="11">Noviembre</option>
                            <option value="12">Diciembre</option>
                        </select>
                        <select>
                            <option value="16"> 2021</option>
                            <option value="17"> 2022</option>
                            <option value="18"> 2023</option>
                            <option value="19"> 2024</option>
                            <option value="20"> 2025</option>
                            <option value="21"> 2026</option>
                        </select>
                    </div>

                    <div id="comentario">
                        <label>
                            Direccion de envio:
                        </label>
                        <textarea class="form-control-lg" cols="50" rows="7" maxlength="255" name="informacion" id="informacion">
                        </textarea>
                    </div>

                    <div class="g-recaptcha" data-sitekey="6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI"></div>

                    <fieldset class="botones" id="pay-now">
                        <input type="submit" value="Procesar" name="btnEnviar" class="btn btn-primary width-100"  id="confirm-purchase">
                    </fieldset>
        </form>
    </div>
</div>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/jquery.payform.min.js" charset="utf-8"></script>

<script src="js/url.js"></script>
<!-- APP SCRIPT -->
<script src="js/app.js"></script>
<script src="js/validacionFormulario.js"></script>
</body>
</html>
