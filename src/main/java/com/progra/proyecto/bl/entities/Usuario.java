package com.progra.proyecto.bl.entities;

public class Usuario {
    private int id;
    private String nombreUsuario;
    private String password;
    private Integer estado;
    private Integer tipoUsuario;

    public Usuario() {
    }

    public Usuario(int id, String nombreUsuario, String password, Integer estado, Integer tipoUsuario) {
        this.id = id;
        this.nombreUsuario = nombreUsuario;
        this.password = password;
        this.estado = estado;
        this.tipoUsuario = tipoUsuario;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getEstado() {
        return estado;
    }

    public void setEstado(Integer estado) {
        this.estado = estado;
    }

    public Integer getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(Integer tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }
}
