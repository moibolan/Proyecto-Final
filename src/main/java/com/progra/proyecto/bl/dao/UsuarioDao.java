package com.progra.proyecto.bl.dao;
import com.progra.proyecto.utils.Conexion;
import com.progra.proyecto.bl.entities.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class UsuarioDao {
    public final static Connection connection = Conexion.getConnection();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Conexion cn = new Conexion();

    public Usuario login(Usuario usu)throws SQLException
    {
        ResultSet rs;
        try
        {

            System.out.println(usu.getUsuario());
            System.out.println(usu.getPassword());


            System.out.println("Estamos desde el metodo loing en LoginDAO    1  ");
            String sql = "select nombre, rol, fecha_creacion, ultima_conexion  from usuarios where usuario=? and password=?";

            System.out.println("Estamos desde el metodo loing en LoginDAO    2  ");
            PreparedStatement ps =connection.prepareStatement(sql);

            System.out.println("Estamos desde el metodo loing en LoginDAO    3  ");

            System.out.println(usu.getUsuario());
            System.out.println(usu.getPassword());


            ps.setString(1, usu.getUsuario());
            ps.setDouble(2, usu.getPassword());
            rs= ps.executeQuery();

            
            System.out.println("Estamos desde el metodo loing en LoginDAO    4  ");

            if (rs.next()) {

                usu.setNombre(rs.getString("nombre"));
                usu.setRol(rs.getString("rol"));
                usu.setFecha_creacion(rs.getString("fecha_creacion"));
                usu.setUltima_conexion(rs.getString("ultima_conexion"));

                System.out.println(usu.getUsuario());
                System.out.println(usu.getRol());
                System.out.println(usu.getFecha_creacion());
                System.out.println(usu.getUltima_conexion());

            }
            System.out.println("Estamos desde el metodo loing en LoginDAO    5  ");

        } catch (Exception e)
        {
            //throw e;
            throw new SQLException("Ha ocurrido un error");
        }
        return usu;
    }

    public List Listar() {
        String consulta = "SELECT * FROM usuarios";
        List<Usuario> lista = new ArrayList();

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt("id"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setRol(rs.getString("rol"));
                usuario.setUsuario(rs.getString("usuario"));
                usuario.setPassword(rs.getDouble("password"));
                usuario.setFecha_creacion(rs.getString("fecha_creacion"));
                usuario.setUltima_conexion(rs.getString("ultima_conexion"));

                lista.add(usuario);

            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;

    }











}
