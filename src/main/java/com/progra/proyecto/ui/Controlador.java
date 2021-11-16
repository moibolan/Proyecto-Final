package com.progra.proyecto.ui;

import com.progra.proyecto.bl.dao.UsuarioDao;
import com.progra.proyecto.bl.entities.Usuario;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Controlador", value = "/Controlador")
public class Controlador extends HttpServlet {

    Usuario usuario = new Usuario();
    UsuarioDao usuarioDao = new UsuarioDao();
    int idUsuario;


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {



        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");

        if (menu.equals("Principal")) {
            request.getRequestDispatcher("mantUsuarios.jsp").forward(request, response);

        }

        if (menu.equals("admUsuarios")) {
            switch (accion) {
                case "Listar":
                    List lista = usuarioDao.Listar();
                    request.setAttribute("usuarios",lista);
                    break;

                case "Agregar":
                    String nombre2 = request.getParameter("nombre");
                    String rol2 = request.getParameter("rol");
                    String usuario2 = request.getParameter("usuario");
                    String password2 = request.getParameter("password");
                    String fecha_creacion2 = request.getParameter("fecha_creacion");
                    String ultima_conexion2 = request.getParameter("ultima_conexion");

                    usuario.setNombre(nombre2);
                    usuario.setRol(rol2);
                    usuario.setUsuario(usuario2);
                    usuario.setPassword(Double.parseDouble(password2));
                    usuario.setFecha_creacion(fecha_creacion2);
                    usuario.setUltima_conexion(ultima_conexion2);

                    System.out.println(usuario.getNombre());
                    System.out.println(usuario.getRol());
                    System.out.println(usuario.getNombre());
                    System.out.println(usuario.getUsuario());
                    System.out.println(usuario.getPassword());
                    System.out.println(usuario.getFecha_creacion());
                    System.out.println(usuario.getUltima_conexion());



                    usuarioDao.Agregar(usuario);
                    request.getRequestDispatcher("Controlador?menu=admUsuarios&accion=Listar").forward(request, response);
                    break;


                case "Eliminar":
                    idUsuario = Integer.parseInt(request.getParameter("id"));
                    usuarioDao.Eliminar(idUsuario);
                    request.getRequestDispatcher("Controlador?menu=admUsuarios&accion=Listar").forward(request, response);

                    break;
                case "Actualizar":

                    Usuario usuario1 = new Usuario();
                    String nombreUpdate = request.getParameter("nombre");
                    String rolUpdate = request.getParameter("rol");
                    String usuarioUpdate = request.getParameter("usuario");
                    String passwordUpdate = request.getParameter("password");
                    String fecha_creacionUpdate = request.getParameter("fecha_creacion");
                    String ultima_conexionUpdate = request.getParameter("ultima_conexion");

                    usuario1.setNombre(nombreUpdate);
                    usuario1.setRol(rolUpdate);
                    usuario1.setUsuario(usuarioUpdate);
                    usuario1.setPassword(Double.parseDouble(passwordUpdate));
                    usuario1.setFecha_creacion(fecha_creacionUpdate);
                    usuario1.setUltima_conexion(ultima_conexionUpdate);

                    usuario1.setId(idUsuario);
                    usuarioDao.Actualizar(usuario1);
                    request.getRequestDispatcher("Controlador?menu=admUsuarios&accion=Listar").forward(request, response);
                    break;

                case "Cargar":
                    idUsuario = Integer.parseInt(request.getParameter("id"));
                    Usuario usuario = usuarioDao.ListarPorId(idUsuario);
                    request.setAttribute("usuarioSeleccionado", usuario);
                    request.getRequestDispatcher("Controlador?menu=admUsuarios&accion=Listar").forward(request, response);

                    break;
            }

            request.getRequestDispatcher("admUsuarios.jsp").forward(request, response);
        }



    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }





}
