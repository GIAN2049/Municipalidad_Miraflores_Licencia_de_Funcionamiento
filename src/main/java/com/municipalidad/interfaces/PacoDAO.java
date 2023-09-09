package com.municipalidad.interfaces;

import java.util.ArrayList;
	
import com.municipalidad.entidad.PACO;

public interface PacoDAO {
	int registrar(PACO paco);
	int actualizar(PACO paco);
	PACO buscarPorID (int infoPACO);
	ArrayList<PACO> listar();

}
