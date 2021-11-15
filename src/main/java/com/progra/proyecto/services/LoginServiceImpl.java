package com.progra.proyecto.services;

import com.progra.proyecto.bl.entities.Usuario;
import com.progra.proyecto.bl.dao.UsuarioDao;

public class LoginServiceImpl implements LoginService{

    private UsuarioDao usuarioDao;

    public LoginServiceImpl() {
        usuarioDao = new UsuarioDao();
    }

    public Usuario login(Usuario usuario) throws Exception {
        System.out.println("ESTAMOS INTENTANDO DESDE LOSING SERVICE IMP");
        System.out.println(usuario.getUsuario());
        System.out.println(usuario.getPassword());

        return usuarioDao.login(usuario);
    }

}
