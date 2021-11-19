package com.progra.proyecto.ui;

import com.progra.proyecto.bl.dao.PeliculaDao;
import com.progra.proyecto.bl.dao.UsuarioDao;
import com.progra.proyecto.bl.entities.Pelicula;
import com.progra.proyecto.bl.entities.Usuario;
import com.progra.proyecto.services.*;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Controlador", value = "/Controlador")
public class Controlador extends HttpServlet {
    //Comenatario porque no puedo hacer Sysout
    Usuario usuario = new Usuario();
    int idUsuario;

    Pelicula pelicula = new Pelicula();
    int idPelicula;

    PeliculaService peliculaService = new PeliculaServiceImpl();
    UsuarioService usuarioService = new UsuarioServiceImpl();

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
                    List lista = null;
                    try {
                        lista = usuarioService.Listar();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
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


                    try {
                        usuarioService.Agregar(usuario);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    request.getRequestDispatcher("Controlador?menu=admUsuarios&accion=Listar").forward(request, response);
                    break;


                case "Eliminar":
                    idUsuario = Integer.parseInt(request.getParameter("id"));
                    try {
                        usuarioService.Eliminar(idUsuario);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
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
                    try {
                        usuarioService.Actualizar(usuario1);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    request.getRequestDispatcher("Controlador?menu=admUsuarios&accion=Listar").forward(request, response);
                    break;

                case "Cargar":
                    idUsuario = Integer.parseInt(request.getParameter("id"));
                    Usuario usuario = null;
                    try {
                        usuario = usuarioService.ListarPorId(idUsuario);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    request.setAttribute("usuarioSeleccionado", usuario);
                    request.getRequestDispatcher("Controlador?menu=admUsuarios&accion=Listar").forward(request, response);

                    break;
            }

            request.getRequestDispatcher("admUsuarios.jsp").forward(request, response);
        }


        if (menu.equals("admPeliculas")) {
            switch (accion) {
                case "Listar":

                    //usuario = loginService.login(usuario);
                    //List lista = peliculaDao.Listar();
                    List lista = null;
                    try {
                        lista = peliculaService.Listar();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    request.setAttribute("peliculas",lista);
                    break;

                case "Agregar":

                    String titulo = request.getParameter("titulo");
                    String descripcion = request.getParameter("descripcion");
                    String genero = request.getParameter("genero");
                    String director = request.getParameter("director");
                    String anno = request.getParameter("anno");

                    pelicula.setTitulo(titulo);
                    pelicula.setDescripcion(descripcion);
                    pelicula.setGenero(Integer.parseInt(genero));
                    pelicula.setDirector(director);
                    pelicula.setAnno(anno);


                    try {
                        peliculaService.Agregar(pelicula);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    request.getRequestDispatcher("Controlador?menu=admPeliculas&accion=Listar").forward(request, response);
                    break;


                case "Eliminar":
                    idPelicula = Integer.parseInt(request.getParameter("id"));
                    try {
                        peliculaService.Eliminar(idPelicula);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    request.getRequestDispatcher("Controlador?menu=admPeliculas&accion=Listar").forward(request, response);

                    break;
                case "Actualizar":

                    Pelicula pelicula1 = new Pelicula();

                    String tituloUpdate = request.getParameter("titulo");
                    String descripcionUpdate = request.getParameter("descripcion");
                    String generoUpdate = request.getParameter("genero");
                    String directorUpdate = request.getParameter("director");
                    String annoUpdate = request.getParameter("anno");


                    pelicula1.setTitulo(tituloUpdate);
                    pelicula1.setDescripcion(descripcionUpdate);
                    pelicula1.setGenero(Integer.parseInt(generoUpdate));
                    pelicula1.setDirector(directorUpdate);
                    pelicula1.setAnno(annoUpdate);


                    pelicula1.setId(idPelicula);
                    try {
                        peliculaService.Actualizar(pelicula1);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                    request.getRequestDispatcher("Controlador?menu=admPeliculas&accion=Listar").forward(request, response);
                    break;

                case "Cargar":
                    idPelicula = Integer.parseInt(request.getParameter("id"));
                    Pelicula pelicula = null;
                    try {
                        pelicula = peliculaService.ListarPorId(idPelicula);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    request.setAttribute("peliculaSeleccionada", pelicula);
                    request.getRequestDispatcher("Controlador?menu=admPeliculas&accion=Listar").forward(request, response);

                    break;
            }

            request.getRequestDispatcher("admPeliculas.jsp").forward(request, response);
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
