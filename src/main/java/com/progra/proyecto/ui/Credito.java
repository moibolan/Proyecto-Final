package com.progra.proyecto.ui;

public class Credito {
    private String name;
    private String job;

    public Credito(String name, String job) {
        this.name = name;
        this.job = job;
    }

    public Credito() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }
}
