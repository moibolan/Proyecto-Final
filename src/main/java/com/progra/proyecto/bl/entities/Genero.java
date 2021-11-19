package com.progra.proyecto.bl.entities;

public class Genero {
    private int id;
    String name;

    public Genero(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public Genero() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }



}
