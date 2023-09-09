package com.municipalidad.service;

import java.util.ArrayList;

import com.municipalidad.entidad.ADA;
import com.municipalidad.fabrica.DAOFactory;
import com.municipalidad.interfaces.AdaDAO;

public class AdaService {
	private DAOFactory fabrica = DAOFactory.getDAOFactory(1);
	
	private AdaDAO objAda=fabrica.getAdaDAO();
	
	public ArrayList<ADA> listar(){
		return objAda.listar();
	}
	
	
}
