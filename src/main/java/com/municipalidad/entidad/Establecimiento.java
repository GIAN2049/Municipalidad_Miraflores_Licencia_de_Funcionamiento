package com.municipalidad.entidad;

public class Establecimiento {
	private int codEstablecimiento;
	private String ubicacionNegocio;
	private int areaUtilizada;
	private int capacidadAforo;
	private int antiguedad;
	private String nomComercial;
	private int numPisos;
	private String referencia;
	
	//llave foranea
	private String razonSocial;

	//generando metodos getend and seters
	public int getCodEstablecimiento() {
		return codEstablecimiento;
	}

	public void setCodEstablecimiento(int codEstablecimiento) {
		this.codEstablecimiento = codEstablecimiento;
	}

	public String getUbicacionNegocio() {
		return ubicacionNegocio;
	}

	public void setUbicacionNegocio(String ubicacionNegocio) {
		this.ubicacionNegocio = ubicacionNegocio;
	}

	public int getAreaUtilizada() {
		return areaUtilizada;
	}

	public void setAreaUtilizada(int areaUtilizada) {
		this.areaUtilizada = areaUtilizada;
	}

	public int getCapacidadAforo() {
		return capacidadAforo;
	}

	public void setCapacidadAforo(int capacidadAforo) {
		this.capacidadAforo = capacidadAforo;
	}

	public int getAntiguedad() {
		return antiguedad;
	}

	public void setAntiguedad(int antiguedad) {
		this.antiguedad = antiguedad;
	}

	public String getNomComercial() {
		return nomComercial;
	}

	public void setNomComercial(String nomComercial) {
		this.nomComercial = nomComercial;
	}

	public int getNumPisos() {
		return numPisos;
	}

	public void setNumPisos(int numPisos) {
		this.numPisos = numPisos;
	}

	public String getReferencia() {
		return referencia;
	}

	public void setReferencia(String referencia) {
		this.referencia = referencia;
	}

	public String getRazonSocial() {
		return razonSocial;
	}

	public void setRazonSocial(String razonSocial) {
		this.razonSocial = razonSocial;
	}
	

}
