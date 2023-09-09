package com.municipalidad.service;

import java.util.ArrayList;

import com.municipalidad.entidad.Caja;
import com.municipalidad.fabrica.DAOFactory;
import com.municipalidad.interfaces.CajaDAO;

public class CajaService {
	private DAOFactory fabrica=DAOFactory.getDAOFactory(1);

	private CajaDAO objSol=fabrica.getCajaDao();
	
	
	public ArrayList<Caja> listar() {
		return objSol.listar();
	}

}
