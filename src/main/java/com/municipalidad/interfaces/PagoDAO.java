package com.municipalidad.interfaces;

import java.util.ArrayList;

import com.municipalidad.entidad.Pago;

public interface PagoDAO {
	int registrar (Pago pag);
	ArrayList<Pago> listarPago();
	Pago buscarPorID(int codPago);

}
