package com.proyecto1version2.ui;

import com.progra.pelicula.bl.Cliente;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ContactenosServlet", value = "/ContactenosServlet")
public class ContactenosServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre, apellido,correo, tarjeta;
        String informacion;
        int telefono;

//COMENTARIO COMMIT

//         El getParameter va a buscar en el formulario por "name"
// <input type="text" class="form-control" name="nombre" placeholder="Tu nombre" required>

        nombre = request.getParameter("nombre");
        apellido = request.getParameter("apellido");
        correo= request.getParameter("correo");
        tarjeta = request.getParameter("tarjeta");
        telefono = Integer.parseInt(request.getParameter("telefono"));

        informacion = request.getParameter("informacion");





        Cliente cliente = new Cliente();
        cliente.setNombre(nombre);
        cliente.setApellido(apellido);
        cliente.setCorreo(correo);
        cliente.setTarjeta(tarjeta);
        cliente.setTelefono(telefono);
        cliente.setInformacion(informacion);


        request.setAttribute("Cliente", cliente);
        request.getRequestDispatcher("mostrarContactenos.jsp").forward(request, response);

    }
}
