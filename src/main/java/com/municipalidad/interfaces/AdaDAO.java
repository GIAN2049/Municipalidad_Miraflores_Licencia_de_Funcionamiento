package com.municipalidad.interfaces;

import java.util.ArrayList;

import com.municipalidad.entidad.ADA;

public interface AdaDAO {
	int registrar(ADA ada);
	int actualizar(ADA ada);
	ADA buscarPorID (int codADA);
	ArrayList<ADA> listar();
}
