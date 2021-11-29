package com.progra.proyecto.bl.entities;

public class ProductoCarrito {

    private int idproducto;
    private int idcliente;
    private int idpelicula;
    private String titulo;
    private int cantidad;
    private double precio;

    public ProductoCarrito(int idproducto, int idcliente, int idpelicula, String titulo, int cantidad, double precio) {
        this.idproducto = idproducto;
        this.idcliente = idcliente;
        this.idpelicula = idpelicula;
        this.titulo = titulo;
        this.cantidad = cantidad;
        this.precio = precio;
    }

    public ProductoCarrito() {
    }

    public int getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(int idproducto) {
        this.idproducto = idproducto;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public int getIdpelicula() {
        return idpelicula;
    }

    public void setIdpelicula(int idpelicula) {
        this.idpelicula = idpelicula;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
}
