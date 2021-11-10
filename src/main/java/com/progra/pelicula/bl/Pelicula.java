package com.progra.pelicula.bl;

import java.io.Serializable;

public class Pelicula implements Serializable {
    String nombre;
    double precio;

    public Pelicula(){

    }

    public Pelicula(String nombre, double precio) {
        this.nombre = nombre;
        this.precio = precio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
}

