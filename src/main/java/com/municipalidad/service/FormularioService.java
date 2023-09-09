package com.municipalidad.service;

import java.util.ArrayList;

import com.municipalidad.entidad.Formulario;
import com.municipalidad.fabrica.DAOFactory;
import com.municipalidad.interfaces.FormularioDAO;

public class FormularioService {
	private DAOFactory fabrica=DAOFactory.getDAOFactory(1);
	private FormularioDAO objForm=fabrica.getFormularioDAO();
	
	public int registrar(Formulario form) {
		return objForm.registrar(form);
	}
	
	public ArrayList<Formulario> listar() {
		return objForm.listar();
	}
}
