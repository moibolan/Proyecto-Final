package com.progra.proyecto.services;

import com.progra.proyecto.bl.entities.Pelicula;


import java.util.List;

public interface PeliculaService {


    public List Listar() throws Exception;
    public int Agregar(Pelicula pelicula)throws Exception;
    public Pelicula ListarPorId(int id)throws Exception;
    public int Actualizar(Pelicula pelicula)throws Exception;
    public void Eliminar(int id)throws Exception;

}
