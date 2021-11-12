package com.progra.proyecto.bl.dao;
import com.progra.proyecto.utils.Conexion;
import com.progra.proyecto.bl.entities.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class LoginDao {
    public final static Connection connection = Conexion.getConnection();

    public Usuario login(Usuario usu)throws SQLException
    {
        ResultSet rs;
        try
        {
            System.out.println("Estamos desde el metodo loing en LoginDAO    1  ");
            String sql = "select nombreUsuario, tipoUsuario, estado from usuarios where nombreUsuario=? and password=?";
            System.out.println("Estamos desde el metodo loing en LoginDAO    2  ");
            PreparedStatement ps =connection.prepareStatement(sql);

            System.out.println("Estamos desde el metodo loing en LoginDAO    3  ");
            ps.setString(1, usu.getNombreUsuario());
            ps.setString(2, usu.getPassword());
            rs= ps.executeQuery();

            System.out.println("Estamos desde el metodo loing en LoginDAO    4  ");

            if (rs.next()) {
                usu.setNombreUsuario(rs.getString("nombreUsuario"));
                usu.setTipoUsuario(rs.getInt("tipoUsuario"));
                usu.setEstado(rs.getInt("estado"));

                System.out.println(usu.getNombreUsuario());
                System.out.println(usu.getTipoUsuario());
                System.out.println(usu.getEstado());
            }
            System.out.println("Estamos desde el metodo loing en LoginDAO    5  ");

        } catch (Exception e)
        {
            //throw e;
            throw new SQLException("Ha ocurrido un error");
        }
        return usu;
    }
}
