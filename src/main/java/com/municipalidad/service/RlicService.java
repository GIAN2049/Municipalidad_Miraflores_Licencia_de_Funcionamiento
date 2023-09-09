package com.municipalidad.service;

import java.util.ArrayList;

import com.municipalidad.entidad.RLIC;
import com.municipalidad.fabrica.DAOFactory;
import com.municipalidad.interfaces.RlicDAO;

public class RlicService {
	private DAOFactory fabrica=DAOFactory.getDAOFactory(1);
	
	private RlicDAO objRlic=fabrica.getRlicDAO();
	
	public ArrayList<RLIC> listarRLICTodos() {
		return objRlic.listarRLIC(); 
	}
	public int registrar(RLIC lic) {
		return objRlic.registrar(lic);
	}
	public int actualizar(RLIC lic) {
		return objRlic.actualizar(lic);
	}
	public int eliminarPorID(int codRlic) {
		return objRlic.eliminarPorID(codRlic);
	}
	public RLIC buscarPorID(int codRlic) {
		return objRlic.buscarPorID(codRlic);
	}
	//agrehando metdo adicional
	public RLIC buscarPorSellado(int codRlic) {
		return objRlic.buscarPorID(codRlic);
	}
	
}
