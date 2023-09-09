package com.municipalidad.interfaces;

import java.util.ArrayList;

import com.municipalidad.entidad.Caja;


public interface CajaDAO {
	int registrar(Caja soc);
	Caja buscarPorID(int codigo);
	ArrayList<Caja> listar();
}
