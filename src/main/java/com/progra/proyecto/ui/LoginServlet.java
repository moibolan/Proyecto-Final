package com.progra.proyecto.ui;

import com.progra.proyecto.bl.entities.Usuario;
import com.progra.proyecto.services.LoginService;
import com.progra.proyecto.services.LoginServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Optional;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("Seteamos una variable de aplicación");
        ServletContext aplicacion = request.getServletContext(); // De vuelve el contexto de la aplicacion
        aplicacion.setAttribute("variableAplicacion", "aplicacionWeb"); //

        String user, password;

        try{

            user = request.getParameter("username");
            password = request.getParameter("password");

            if(!user.equals("") && !password.equals("")){
                Usuario usuario = new Usuario();
                usuario.setNombreUsuario(user);
                usuario.setPassword(password);

                LoginService loginService = new LoginServiceImpl();
                System.out.println("Estamos en login servlet hola  1   !!");
                usuario = loginService.login(usuario);
                System.out.println("Estamos en login servlet hola  2   !!");

                if(Optional.ofNullable(usuario.getTipoUsuario()).isPresent()){

                    //podemos verificar si ya una sesion anterior e invalidarla
                    HttpSession oldSession = request.getSession(false);
                    if (oldSession != null) {
                        oldSession.invalidate();
                    }

                    System.out.println("Estamos en login servlet hola  3   !!");
                    HttpSession session = request.getSession(true);
                    //le asignamos tiempo a la sesion
                    session.setMaxInactiveInterval(5*60);



                    //podemos agregar un cookie tambien
                    Cookie message = new Cookie("mensaje", "Bienvenido");
                    response.addCookie(message);

                    System.out.println("Estamos en login servlet hola  4   !!");
                    session.setAttribute("usuario", usuario);

                    System.out.println("Estamos en login servlet hola  5   !!");
                    response.sendRedirect("catalogo.html");

                }else{
                    throw new Exception("Login Incorrecto");
                }

            }else{
                throw new Exception("Login Incorrecto");
            }

        }catch(Exception e){
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("Error.jsp").forward(request, response);
        }

    }
}
