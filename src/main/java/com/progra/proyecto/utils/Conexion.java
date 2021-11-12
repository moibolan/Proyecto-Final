/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.progra.proyecto.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class Conexion {
    public static Connection getConnection(){
          try{

            Class.forName("com.mysql.cj.jdbc.Driver");
              System.out.println("Pasamos el paquete en CONEXION");
            Connection con = DriverManager.
                    getConnection("jdbc:mysql://localhost:3306/proyecto-final", "root", "1234");
              System.out.println("Pasamos el password en CONEXION");
           return con;
        }catch(Exception ex){
            System.out.println(ex);
            return null;
        }
    }
}
