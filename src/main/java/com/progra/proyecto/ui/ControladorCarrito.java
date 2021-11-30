package com.progra.proyecto.ui;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.progra.proyecto.bl.dao.UsuarioDao;
import com.progra.proyecto.bl.entities.Genero;
import com.progra.proyecto.bl.entities.Pelicula;
import com.progra.proyecto.bl.entities.ProductoCarrito;
import com.progra.proyecto.bl.entities.Usuario;
import com.progra.proyecto.services.*;
import com.progra.proyecto.utils.Proxy;

import javax.json.JsonArray;
import javax.json.JsonObject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;



@WebServlet(name = "ControladorCarrito", value = "/ControladorCarrito")
public class ControladorCarrito extends HttpServlet {
    //Comenatario porque no puedo hacer Sysout

    Usuario usuario = new Usuario();

    int idUsuario;

    Pelicula pelicula = new Pelicula();
    int idProducto;

    ProductoCarrito productoCarrito = new ProductoCarrito();
    ProductoCarritoService productoCarritoService = new ProductoCarritoServiceImpl();

    PeliculaService peliculaService = new PeliculaServiceImpl();
    UsuarioService usuarioService = new UsuarioServiceImpl();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {



        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");




        if (menu.equals("admPeliculas")) {
            switch (accion) {
                case "Listar":

                   // Aqui va el metodo que busca en la tabla por el ID usuario

                    //usuario = loginService.login(usuario);
                    //List lista = peliculaDao.Listar();
                    List lista = null;
                    try {

                        lista = productoCarritoService.Listar();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    request.setAttribute("productos",lista);
                    break;

                case "Agregar":

                    String cantidad = request.getParameter("cantidad");
                    String idCliente = request.getParameter("usuarioID");
                    String Titulo = request.getParameter("tituloID");
                    String numPelicula = request.getParameter("peliculaID");
                    String precio = request.getParameter("precioID");


                   // System.out.println(request.getParameter("cantidad"));
                  //  System.out.println(request.getParameter("usuarioID"));
          /*          String titulo = request.getParameter("titulo");
                    String descripcion = request.getParameter("descripcion");
                    String genero = request.getParameter("genero");
                    String director = request.getParameter("director");
                    String anno = request.getParameter("anno");*/


                    productoCarrito.setCantidad(Integer.parseInt(cantidad));
                    productoCarrito.setIdcliente(Integer.parseInt(idCliente));
                    productoCarrito.setIdpelicula(Integer.parseInt(numPelicula));
                    productoCarrito.setTitulo(Titulo);
                    productoCarrito.setPrecio(Double.parseDouble(precio));


               /*     pelicula.setTitulo(titulo);
                    pelicula.setDescripcion(descripcion);
                    pelicula.setGenero(Integer.parseInt(genero));
                    pelicula.setDirector(director);
                    pelicula.setAnno(anno);*/


                    try {


                        productoCarritoService.Agregar(productoCarrito);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    System.out.println("antes");
                    request.getRequestDispatcher("ControladorCarrito?menu=admPeliculas&accion=Listar").forward(request, response);
                    System.out.println("despues");
                    break;

                case "ListarId":

                    HttpSession ses = request.getSession(); //Agarramos la sesion que tiene como atributo usuario
                    usuario = (Usuario) ses.getAttribute("usuario"); // Obtengo el usuario

                    //usuario = loginService.login(usuario);
                    //List lista = peliculaDao.Listar();
                    List listaId = null;
                    try {
                        listaId = productoCarritoService.ListarId(usuario.getId());
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    request.setAttribute("productos",listaId);
                    break;


                case "Eliminar":
                    idProducto = Integer.parseInt(request.getParameter("id"));
                    try {
                        productoCarritoService.Eliminar(idProducto);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                    request.getRequestDispatcher("ControladorCarrito?menu=admPeliculas&accion=ListarId").forward(request, response);
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


                    pelicula1.setId(idProducto);
                    try {
                        peliculaService.Actualizar(pelicula1);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }


                    request.getRequestDispatcher("ControladorCarrito?menu=admPeliculas&accion=Listar").forward(request, response);
                    break;

                case "Cargar":
                    idProducto = Integer.parseInt(request.getParameter("id"));
                    Pelicula pelicula = null;
                    try {
                        pelicula = peliculaService.ListarPorId(idProducto);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    request.setAttribute("peliculaSeleccionada", pelicula);
                    request.getRequestDispatcher("ControladorCarrito?menu=admPeliculas&accion=Listar").forward(request, response);

                    break;



            }

            request.getRequestDispatcher("catalogo.jsp").forward(request, response);
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
