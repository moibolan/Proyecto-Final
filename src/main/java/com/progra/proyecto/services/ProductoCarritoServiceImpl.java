package com.progra.proyecto.services;



import com.progra.proyecto.bl.dao.ProductoCarritoDao;
import com.progra.proyecto.bl.entities.ProductoCarrito;

import java.util.List;

public class ProductoCarritoServiceImpl implements ProductoCarritoService {

    private ProductoCarritoDao productoCarritoDao ;
    public ProductoCarritoServiceImpl() {productoCarritoDao = new ProductoCarritoDao();}


    @Override
    public int Agregar(ProductoCarrito productoCarrito) throws Exception {
         return productoCarritoDao.Agregar(productoCarrito);
    }

    @Override
    public List Listar() throws Exception {
        return productoCarritoDao.Listar();
    }

    @Override
    public List ListarId(int id) throws Exception {
        return productoCarritoDao.ListarId(id);
    }

    @Override
    public void Eliminar(int id) throws Exception {
         productoCarritoDao.Eliminar(id);
    }
}
