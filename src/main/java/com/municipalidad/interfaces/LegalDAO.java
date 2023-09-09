package com.municipalidad.interfaces;

import java.util.ArrayList;

import com.municipalidad.entidad.Legal;

public interface LegalDAO {
	
	int registrar(Legal lel);
	int actualizar(Legal lel);
	int eliminarPorID(int codDatosAdicionales);
	Legal buscarPorID(int codDatosAdicionales);
	ArrayList<Legal> listar();
	
}
