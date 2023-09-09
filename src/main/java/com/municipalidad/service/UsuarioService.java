package com.municipalidad.service;

import java.util.ArrayList;

import com.municipalidad.entidad.Menu;
import com.municipalidad.entidad.Usuario;
import com.municipalidad.fabrica.DAOFactory;
import com.municipalidad.interfaces.UsuarioDAO;

public class UsuarioService {
	private DAOFactory fabrica=DAOFactory.getDAOFactory(1);
	private UsuarioDAO obj=fabrica.getUsuarioDAO();
	
	public Usuario loginUsuario(String vLogin, String vClave) {
		return obj.iniciarSecsion(vLogin, vClave);
	}
	
	public ArrayList<Menu> menusDelUsuario(int codUsuario) {
		return obj.traerMenuDelUsuario(codUsuario);
	}

}
