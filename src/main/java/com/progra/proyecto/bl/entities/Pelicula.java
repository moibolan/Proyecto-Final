package com.progra.proyecto.bl.entities;

import java.io.Serializable;

public class Pelicula implements Serializable {

    int id;
    String titulo;
    String descripcion;
    int genero;
    String director;
    String anno;

    public Pelicula(int id, String titulo, String descripcion, int genero, String director, String anno) {
        this.id = id;
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.genero = genero;
        this.director = director;
        this.anno = anno;
    }

    public Pelicula() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getGenero() {
        return genero;
    }

    public void setGenero(int genero) {
        this.genero = genero;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getAnno() {
        return anno;
    }

    public void setAnno(String anno) {
        this.anno = anno;
    }
}

