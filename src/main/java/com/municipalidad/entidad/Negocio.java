package com.municipalidad.entidad;

public class Negocio {
	private int codDatosAdicional;
	private int empleMasculino;
	private int empleFemenino;
	
	//llave foranea
	private String actividadComercial;

	//generando metodo geters and seters
	public int getCodDatosAdicional() {
		return codDatosAdicional;
	}

	public void setCodDatosAdicional(int codDatosAdicional) {
		this.codDatosAdicional = codDatosAdicional;
	}

	public int getEmpleMasculino() {
		return empleMasculino;
	}

	public void setEmpleMasculino(int empleMasculino) {
		this.empleMasculino = empleMasculino;
	}

	public int getEmpleFemenino() {
		return empleFemenino;
	}

	public void setEmpleFemenino(int empleFemenino) {
		this.empleFemenino = empleFemenino;
	}

	public String getActividadComercial() {
		return actividadComercial;
	}

	public void setActividadComercial(String actividadComercial) {
		this.actividadComercial = actividadComercial;
	}
	

}
