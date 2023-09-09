package com.municipalidad.service;

import java.util.ArrayList;

import com.municipalidad.entidad.Comerciante;
import com.municipalidad.entidad.Solicitante;
import com.municipalidad.fabrica.DAOFactory;
import com.municipalidad.interfaces.ComercianteDAO;
import com.municipalidad.interfaces.SolicitanteDAO;

public class SolicitanteService {
	private DAOFactory fabrica=DAOFactory.getDAOFactory(1);
	private ComercianteDAO objCom=fabrica.getComercianteDAO();
	private SolicitanteDAO objSol=fabrica.getSolicitanteDAO();
	
	public ArrayList<Comerciante> listarComerciante() {
		return objCom.listar();
	}
	
	public ArrayList<Solicitante> listarSolicitante() {
		return objSol.listar();
	}
	
	public int eliminarporID(int codIdentificacion) {
		return objSol.eliminarPorID(codIdentificacion);
	}
}
