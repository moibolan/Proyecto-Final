package com.progra.proyecto.services;

import com.progra.proyecto.bl.entities.Usuario;
import com.progra.proyecto.bl.dao.LoginDao;

 

import java.util.ArrayList;

public class LoginServiceImpl implements LoginService{

    private LoginDao loginDao;

    public LoginServiceImpl() {
        loginDao = new LoginDao();
    }

    public Usuario login(Usuario usuario) throws Exception {
        System.out.println("ESTAMOS INTENTANDO DESDE LOSING SERVICE IMP");
        return loginDao.login(usuario);
    }

}
