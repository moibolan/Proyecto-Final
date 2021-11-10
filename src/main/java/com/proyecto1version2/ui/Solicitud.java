package com.proyecto1version2.ui;

import com.progra.pelicula.bl.Cliente;
import com.progra.pelicula.bl.Pelicula;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "Solicitud", value = "/Solicitud")
public class Solicitud extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {




            String nombre, apellido, correo, tarjeta, preferencia1, preferencia2, preferencia3, preferencia4, preferencia5, preferencias;
            String informacion;
            int telefono;
            int cantidad;
            String nombrePelicula;
            int precioPelicula;
            String descuento;


//         El getParameter va a buscar en el formulario por "name"
// <input type="text" class="form-control" name="nombre" placeholder="Tu nombre" required>

            nombre = request.getParameter("nombre");
            apellido = request.getParameter("apellido");
            correo = request.getParameter("correo");
            tarjeta = request.getParameter("tarjeta");
            telefono = Integer.parseInt(request.getParameter("telefono"));
            cantidad = Integer.parseInt(request.getParameter("cantidad"));

            preferencia1 = request.getParameter("preferencia1");
            preferencia2 = request.getParameter("preferencia2");
            preferencia3 = request.getParameter("preferencia3");
            preferencia4 = request.getParameter("preferencia4");
            preferencia5 = request.getParameter("preferencia5");

            preferencias = preferencia1 + " " + preferencia2 + " " + preferencia3 + " " + preferencia4 + " " + preferencia5;

            descuento = request.getParameter("descuento");

            informacion = request.getParameter("informacion");
            nombrePelicula = request.getParameter("test");
            precioPelicula = Integer.parseInt(request.getParameter("test2"));


            Cliente cliente = new Cliente();
            cliente.setNombre(nombre);
            cliente.setApellido(apellido);
            cliente.setCorreo(correo);
            cliente.setTarjeta(tarjeta);
            cliente.setTelefono(telefono);
            cliente.setPreferencias(preferencias);
            cliente.setInformacion(informacion);
            cliente.setCantidad(cantidad);
            cliente.setNombrePelicula(nombrePelicula);
            cliente.setPrecioPelicula(precioPelicula);
            cliente.setDescuentoPelicula(descuento);

//        System.out.println(cliente.getDescuentoPelicula());
//        System.out.println(cliente.calcularTotal());


            String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
            boolean verify = VerificarRecaptcha.verificar(gRecaptchaResponse);


            if (verify) {
                request.setAttribute("Cliente", cliente);
                request.getRequestDispatcher("mostrarSolicitud.jsp").forward(request, response);
            } else {
                RequestDispatcher rd = getServletContext().getRequestDispatcher(
                        "/solicitudes.jsp");

                rd.include(request, response);
            }









        }




}
