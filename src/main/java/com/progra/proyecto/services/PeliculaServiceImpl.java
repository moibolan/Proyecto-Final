package com.progra.proyecto.services;

import com.progra.proyecto.bl.dao.PeliculaDao;
import com.progra.proyecto.bl.dao.UsuarioDao;
import com.progra.proyecto.bl.entities.Pelicula;
import com.progra.proyecto.bl.entities.Usuario;

import java.util.List;

public class PeliculaServiceImpl implements PeliculaService{

    private PeliculaDao peliculaDao;

    public PeliculaServiceImpl() {
        peliculaDao = new PeliculaDao();
    }

    @Override
    public List Listar() throws Exception {
        return peliculaDao.Listar();
    }

    @Override
    public int Agregar(Pelicula pelicula) throws Exception {
        return peliculaDao.Agregar(pelicula);
    }

    @Override
    public Pelicula ListarPorId(int id) throws Exception {
        return peliculaDao.ListarPorId(id);
    }

    @Override
    public int Actualizar(Pelicula pelicula) throws Exception {
        return peliculaDao.Actualizar(pelicula);
    }

    @Override
    public void Eliminar(int id) throws Exception {
        peliculaDao.Eliminar(id);
    }
}
