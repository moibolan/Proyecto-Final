package com.progra.proyecto.bl.dao;

import com.progra.proyecto.bl.entities.Pelicula;
import com.progra.proyecto.bl.entities.ProductoCarrito;
import com.progra.proyecto.utils.Conexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProductoCarritoDao {


    public final static Connection connection = Conexion.getConnection();
    Connection con;
    PreparedStatement ps;
    int r;
    ResultSet rs;
    Conexion cn = new Conexion();


    public int Agregar(ProductoCarrito productoCarrito) {

        String sentencia = "INSERT INTO producto (idcliente,idpelicula,titulo,cantidad,precio) VALUES (?,?,?,?,?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sentencia);

            ps.setInt(1, productoCarrito.getIdcliente());
            ps.setInt(2, productoCarrito.getIdpelicula());
            ps.setString(3, productoCarrito.getTitulo());
            ps.setInt(4, productoCarrito.getCantidad());
            ps.setDouble(5, productoCarrito.getPrecio());

            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PeliculaDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }

    public List Listar() {
        String consulta = "SELECT * FROM producto";
        List<ProductoCarrito> lista = new ArrayList();

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()) {

                ProductoCarrito productoCarrito = new ProductoCarrito();

                productoCarrito.setIdproducto(rs.getInt("idproducto"));
                productoCarrito.setIdcliente(rs.getInt("idcliente"));
                productoCarrito.setIdpelicula(rs.getInt("idpelicula"));
                productoCarrito.setTitulo(rs.getString("titulo"));
                productoCarrito.setCantidad(rs.getInt("cantidad"));
                productoCarrito.setPrecio(rs.getDouble("precio"));

                lista.add(productoCarrito);

            }
        } catch (SQLException ex) {
            Logger.getLogger(PeliculaDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }
}
