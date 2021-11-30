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
    int idPelicula;

    ProductoCarrito productoCarrito = new ProductoCarrito();
    ProductoCarritoService productoCarritoService = new ProductoCarritoServiceImpl();

    PeliculaService peliculaService = new PeliculaServiceImpl();
    UsuarioService usuarioService = new UsuarioServiceImpl();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");

            switch (accion) {
                case "Listar":

                    HttpSession ses = request.getSession(); //Agarramos la sesion que tiene como atributo usuario

                    usuario = (Usuario) ses.getAttribute("usuario"); // Obtengo el usuario

                    System.out.println(usuario.getId()); // Ejemplo para ver el funcionamiento de usuario

                    List lista = productoCarritoService.Listar(); // Aqui va el metodo que busca en la tabla por el ID usuario

                    request.setAttribute("productos",lista);
                    request.getRequestDispatcher("catalogo.jsp").forward(request, response);
                    break;
                case "Agregar":

                    String cantidad = request.getParameter("cantidad");
                    String idCliente = request.getParameter("usuarioID");
                    String Titulo = request.getParameter("tituloID");
                    String numPelicula = request.getParameter("peliculaID");
                    String precio = request.getParameter("precioID");

                    productoCarrito.setCantidad(Integer.parseInt(cantidad));
                    productoCarrito.setIdcliente(Integer.parseInt(idCliente));
                    productoCarrito.setIdpelicula(Integer.parseInt(numPelicula));
                    productoCarrito.setTitulo(Titulo);
                    productoCarrito.setPrecio(Double.parseDouble(precio));


                    productoCarritoService.Agregar(productoCarrito);
                    request.getRequestDispatcher("ControladorCarrito?menu=admPeliculas&accion=Listar").forward(request, response);//aqui vuelves a llamar al listar

                    break;
                case "Eliminar":
                    idPelicula = Integer.parseInt(request.getParameter("id"));
                    try {
                        peliculaService.Eliminar(idPelicula);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    request.getRequestDispatcher("ControladorCarrito?menu=admPeliculas&accion=Listar").forward(request, response);

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


                    request.getRequestDispatcher("ControladorCarrito?menu=admPeliculas&accion=Listar").forward(request, response);
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
                    request.getRequestDispatcher("ControladorCarrito?menu=admPeliculas&accion=Listar").forward(request, response);

                    break;
            }
        }



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }





}
