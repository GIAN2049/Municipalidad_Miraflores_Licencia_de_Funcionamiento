package com.municipalidad.service;

import java.util.ArrayList;

import com.municipalidad.entidad.Pago;
import com.municipalidad.fabrica.DAOFactory;
import com.municipalidad.interfaces.PagoDAO;

public class PagoService {
	private DAOFactory fabrica=DAOFactory.getDAOFactory(1);
	
	private PagoDAO objPago=fabrica.getPagoDAO();
	
	public int registrar(Pago pag) {
		return objPago.registrar(pag);
	}
	
	public ArrayList<Pago> listarPagosTodos() {
		return objPago.listarPago();
	}
	public Pago buscarPorID(int codPago) {
		return objPago.buscarPorID(codPago);
	}

}
