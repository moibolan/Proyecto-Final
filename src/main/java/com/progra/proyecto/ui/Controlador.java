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
                    break;
                case "Eliminar":
                    break;
                case "Actualizar":
                    break;
                case "Cargar":
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
