package com.progra.proyecto.services;



import com.progra.proyecto.bl.entities.Usuario;

import java.util.List;

public interface UsuarioService {


    public List Listar() throws Exception;
    public int Agregar(Usuario usuario)throws Exception;
    public Usuario ListarPorId(int id)throws Exception;
    public int Actualizar(Usuario usuario)throws Exception;
    public void Eliminar(int id)throws Exception;

}
