package com.municipalidad.service;

import java.util.ArrayList;

import com.municipalidad.entidad.RSG;
import com.municipalidad.fabrica.DAOFactory;
import com.municipalidad.interfaces.RsgDAO;

public class RsgService {
	private DAOFactory fabrica =DAOFactory.getDAOFactory(1);
	private RsgDAO objRsg=fabrica.getRsgDAO();
	
	//implementar metodos
	public int registrar(RSG rg) {
		return objRsg.registrar(rg);				
	}
	public int actualizar(RSG rg) {
		return objRsg.actualizar(rg);
	}
	public int eliminarPorID(int cod_rsg) {
		return objRsg.eliminarPorID(cod_rsg);
	}
	public RSG buscarPorID(int cod_rsg) {
		return objRsg.buscarPorID(cod_rsg);
	}
	public ArrayList<RSG> listarRSG() {
		return objRsg.listarRSG();
	}
	//agrehando metdo adicional
	public RSG buscarSellado(int cod_rsg) {
		return objRsg.buscarPorID(cod_rsg);
	}
	
}
