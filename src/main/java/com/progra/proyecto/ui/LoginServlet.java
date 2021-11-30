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

        String user;
        Double password;

        try{

            user = request.getParameter("username");
            password = Double.parseDouble(request.getParameter("password"));

            System.out.println(user);
            System.out.println(password);


            if(!user.equals("") && !password.equals("")){
                Usuario usuario = new Usuario();
                usuario.setUsuario(user);
                usuario.setPassword(password);

                LoginService loginService = new LoginServiceImpl();
                usuario = loginService.login(usuario);



                if(Optional.ofNullable(usuario.getRol()).isPresent()){

                    //podemos verificar si ya una sesion anterior e invalidarla
                    HttpSession oldSession = request.getSession(false);
                    if (oldSession != null) {
                        oldSession.invalidate();
                    }

                    HttpSession session = request.getSession(true);
                    //le asignamos tiempo a la sesion
                    session.setMaxInactiveInterval(5*60);

                    //podemos agregar un cookie tambien
                    Cookie message = new Cookie("mensaje", "Bienvenido");
                    response.addCookie(message);


                    session.setAttribute("usuario", usuario);


                    String temp = usuario.getRol();
                    System.out.println(temp);
                    if(temp.equals("Administrador")) {
                        response.sendRedirect("Controlador?menu=Principal");
                        //request.getRequestDispatcher("Controlador?menu=Principal");
                    }else if(temp.equals("Cliente")){
                        response.sendRedirect("ControladorCarrito?menu=admPeliculas&accion=ListarId");

                    }

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

        System.out.println("Buenas noches");
    }
}
