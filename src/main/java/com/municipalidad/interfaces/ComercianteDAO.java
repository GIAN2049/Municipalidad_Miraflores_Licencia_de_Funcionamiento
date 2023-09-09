package com.municipalidad.interfaces;

import java.util.ArrayList;

import com.municipalidad.entidad.Comerciante;

public interface ComercianteDAO {
	
	//Metodo para registrar un docente
	int registrar(Comerciante doc);
	int actualizar(Comerciante doc);
	int eliminarPorID(int cod);
	Comerciante buscarPorID(int cod);
	ArrayList<Comerciante> listar();

}
