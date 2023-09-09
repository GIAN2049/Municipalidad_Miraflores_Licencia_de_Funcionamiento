package com.municipalidad.interfaces;

import java.util.ArrayList;

import com.municipalidad.entidad.Formulario;

public interface FormularioDAO {
	int registrar(Formulario form);
	ArrayList<Formulario> listar();
	
}
