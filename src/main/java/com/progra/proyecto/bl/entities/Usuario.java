package com.progra.proyecto.bl.entities;

public class Usuario {
    private int id;
    private String nombre;
    private String rol;
    private String usuario;
    private Double password;
    private String fecha_creacion;
    private String ultima_conexion;

    public Usuario() {
    }

    public Usuario(int id, String nombre, String rol, String usuario, Double password, String fecha_creacion, String ultima_conexion) {
        this.id = id;
        this.nombre = nombre;
        this.rol = rol;
        this.usuario = usuario;
        this.password = password;
        this.fecha_creacion = fecha_creacion;
        this.ultima_conexion = ultima_conexion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public Double getPassword() {
        return password;
    }

    public void setPassword(Double password) {
        this.password = password;
    }

    public String getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(String fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }

    public String getUltima_conexion() {
        return ultima_conexion;
    }

    public void setUltima_conexion(String ultima_conexion) {
        this.ultima_conexion = ultima_conexion;
    }
}

