package com.progra.proyecto.services;


import com.progra.proyecto.bl.entities.ProductoCarrito;

import java.util.List;

public interface ProductoCarritoService {

    public int Agregar(ProductoCarrito productoCarrito)throws Exception;
    public List Listar() throws Exception;
    public List ListarId(int id) throws Exception;
    public void Eliminar(int id)throws Exception;
}
