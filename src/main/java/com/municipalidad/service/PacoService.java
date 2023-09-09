package com.municipalidad.service;

import java.util.ArrayList;

import com.municipalidad.entidad.PACO;
import com.municipalidad.fabrica.DAOFactory;
import com.municipalidad.interfaces.PacoDAO;

public class PacoService {
	private DAOFactory fabrica = DAOFactory.getDAOFactory(1);
	
	private PacoDAO objPaco=fabrica.getPacoDAO();
	
	public ArrayList<PACO> listar(){
		return objPaco.listar();
	}

}
