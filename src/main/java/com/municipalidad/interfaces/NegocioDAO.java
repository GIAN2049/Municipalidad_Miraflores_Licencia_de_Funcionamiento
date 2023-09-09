package com.municipalidad.interfaces;

import java.util.ArrayList;

import com.municipalidad.entidad.Negocio;

public interface NegocioDAO {
	
	int registrar(Negocio neg);
	int actualizar(Negocio neg);
	int eliminarPorID(int codDatosAdicional);
	Negocio buscarPorID(int codDatosAdicional);
	ArrayList<Negocio> listar();

}
