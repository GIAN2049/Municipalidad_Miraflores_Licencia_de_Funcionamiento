package com.municipalidad.interfaces;

import java.util.ArrayList;

import com.municipalidad.entidad.Solicitante;

public interface SolicitanteDAO {
	int registrar(Solicitante soc);
	int actualizar(Solicitante soc);
	int eliminarPorID(int  codIdentificacion);
	Solicitante buscarPorID(int codIdentificacion);
	ArrayList<Solicitante> listar();
}
