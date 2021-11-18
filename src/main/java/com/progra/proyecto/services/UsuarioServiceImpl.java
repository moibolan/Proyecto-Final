package com.progra.proyecto.services;


import com.progra.proyecto.bl.dao.UsuarioDao;

import com.progra.proyecto.bl.entities.Usuario;

import java.util.List;

public class UsuarioServiceImpl implements UsuarioService{

    private UsuarioDao usuarioDao;

    public UsuarioServiceImpl() {
        usuarioDao = new UsuarioDao();
    }


    @Override
    public List Listar() throws Exception {
        return usuarioDao.Listar();
    }

    @Override
    public int Agregar(Usuario usuario) throws Exception {
        return usuarioDao.Agregar(usuario);
    }

    @Override
    public Usuario ListarPorId(int id) throws Exception {
        return usuarioDao.ListarPorId(id);
    }

    @Override
    public int Actualizar(Usuario usuario) throws Exception {
        return usuarioDao.Actualizar(usuario);
    }

    @Override
    public void Eliminar(int id) throws Exception {
            usuarioDao.Eliminar(id);
    }
}
