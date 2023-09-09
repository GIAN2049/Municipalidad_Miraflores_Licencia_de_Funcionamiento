package com.municipalidad.interfaces;

import java.util.ArrayList;

import com.municipalidad.entidad.RSG;

public interface RsgDAO {
	int registrar(RSG rg);
	int actualizar(RSG rg);
	int eliminarPorID(int cod_rsg);
	RSG buscarPorID(int cod_rsg);
	ArrayList<RSG> listarRSG();
}
