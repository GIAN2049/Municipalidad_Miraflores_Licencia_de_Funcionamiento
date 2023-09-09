package com.municipalidad.interfaces;

import java.util.ArrayList;

import com.municipalidad.entidad.Menu;
import com.municipalidad.entidad.Usuario;

public interface UsuarioDAO {
	Usuario iniciarSecsion(String vLogin, String vClave);
	ArrayList<Menu> traerMenuDelUsuario(int codUsuario);
	
	
}
