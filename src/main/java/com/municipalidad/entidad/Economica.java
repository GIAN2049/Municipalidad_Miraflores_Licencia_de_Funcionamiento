package com.municipalidad.entidad;

public class Economica {
	private int codEconomica;
	private String giro;
	private String descripcion;
	private String actividadComercial;
	
	//llave foranea
	private String nombreComercial;
	
	
	//generando metodos gentend and seters
	public int getCodEconomica() {
		return codEconomica;
	}

	public void setCodEconomica(int codEconomica) {
		this.codEconomica = codEconomica;
	}

	public String getGiro() {
		return giro;
	}

	public void setGiro(String giro) {
		this.giro = giro;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getActividadComercial() {
		return actividadComercial;
	}

	public void setActividadComercial(String actividadComercial) {
		this.actividadComercial = actividadComercial;
	}

	public String getNombreComercial() {
		return nombreComercial;
	}

	public void setNombreComercial(String nombreComercial) {
		this.nombreComercial = nombreComercial;
	}
	

}
