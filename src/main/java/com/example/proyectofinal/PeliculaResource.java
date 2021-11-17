package com.example.proyectofinal;

import com.progra.proyecto.bl.dao.PeliculaDao;
import com.progra.proyecto.bl.entities.Pelicula;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.ArrayList;

@Path("/pelicula")
public class PeliculaResource {
    PeliculaDao peliculaDao = new PeliculaDao();
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public ArrayList<Pelicula> getProducts() {

        return (ArrayList<Pelicula>) peliculaDao.Listar();
    }


}