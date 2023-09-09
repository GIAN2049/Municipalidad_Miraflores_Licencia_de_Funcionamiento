package com.municipalidad.interfaces;

import java.util.ArrayList;

import com.municipalidad.entidad.Establecimiento;

public interface EstablecimientoDAO {
	int registrar(Establecimiento est);
	int actualizar(Establecimiento est);
	int eliminarPorID(int codEstablecimiento);
	Establecimiento buscarPorID(int codEstablecimiento);
	ArrayList<Establecimiento> listar();
}
