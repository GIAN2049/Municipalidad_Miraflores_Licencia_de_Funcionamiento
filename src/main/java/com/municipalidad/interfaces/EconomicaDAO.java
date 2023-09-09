package com.municipalidad.interfaces;

import java.util.ArrayList;

import com.municipalidad.entidad.Economica;

public interface EconomicaDAO {
	
	int registrar(Economica eco);
	int actualizar(Economica eco);
	int eliminarPorID(int codEconomica);
	Economica buscarPorID(int codEconomica);
	ArrayList<Economica> listar();
}
