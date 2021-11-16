package com.progra.proyecto.bl.dao;


import com.progra.proyecto.bl.entities.Pelicula;
import com.progra.proyecto.utils.Conexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PeliculaDao {

    public final static Connection connection = Conexion.getConnection();
    Connection con;
    PreparedStatement ps;
    int r;
    ResultSet rs;
    Conexion cn = new Conexion();



    public List Listar() {
        String consulta = "SELECT * FROM peliculas";
        List<Pelicula> lista = new ArrayList();

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()) {
                Pelicula pelicula = new Pelicula();
                pelicula.setId(rs.getInt("idpelicula"));
                pelicula.setTitulo(rs.getString("titulo"));
                pelicula.setDescripcion(rs.getString("descripcion"));
                pelicula.setGenero(rs.getInt("genero"));
                pelicula.setDirector(rs.getString("director"));
                pelicula.setAnno(rs.getString("anno"));





                lista.add(pelicula);

            }
        } catch (SQLException ex) {
            Logger.getLogger(PeliculaDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;

    }


    public int Agregar(Pelicula pelicula) {

        String sentencia = "INSERT INTO peliculas (titulo,descripcion,genero,director,anno) VALUES (?,?,?,?,?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sentencia);

            ps.setString(1, pelicula.getTitulo());
            ps.setString(2, pelicula.getDescripcion());
            ps.setInt(3, pelicula.getGenero());
            ps.setString(4, pelicula.getDirector());
            ps.setString(5, pelicula.getAnno());

            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PeliculaDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }


    public Pelicula ListarPorId(int id) {
        Pelicula pelicula = new Pelicula();
        String consulta = "SELECT * FROM peliculas WHERE idpelicula=" + id;
        con = cn.getConnection();
        try {
            ps = con.prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()) {

                pelicula.setTitulo(rs.getString(2));
                pelicula.setDescripcion(rs.getString(3));
                pelicula.setGenero(rs.getInt(4));
                pelicula.setDirector(rs.getString(5));
                pelicula.setAnno(rs.getString(6));


            }
        } catch (SQLException ex) {
            Logger.getLogger(PeliculaDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return pelicula;

    }

    public int Actualizar(Pelicula pelicula) {
        String sentencia = "UPDATE peliculas set titulo=?,descripcion=?,genero=?,director=?,anno=? WHERE idpelicula=?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sentencia);

            ps.setString(1, pelicula.getTitulo());
            ps.setString(2, pelicula.getDescripcion());
            ps.setInt(3, pelicula.getGenero());
            ps.setString(4, pelicula.getDirector());
            ps.setString(5, pelicula.getAnno());
            ps.setInt(6, pelicula.getId());
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(PeliculaDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }

    public void Eliminar(int id) {

        String sql = "DELETE FROM peliculas WHERE idpelicula=" + id;
        con = cn.getConnection();
        try {
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PeliculaDao.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
