package com.municipalidad.interfaces;

import java.util.ArrayList;

import com.municipalidad.entidad.RLIC;

public interface RlicDAO {
	int registrar(RLIC lic);
	int actualizar(RLIC lic);
	int eliminarPorID(int codRlic);
	RLIC buscarPorID(int codRlic);
	ArrayList<RLIC> listarRLIC();
}
