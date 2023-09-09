package com.municipalidad.entidad;

import java.sql.Date;

public class Solicitante {
	private int codIdentificacion;
	private String tipContribuyente;
	private long numRuc;
	private String razon;
	private Date inicioActividad;
	private long numDni;
	private String contribuyente;
	private String estadoContribuyente;
	private Date fechaInscripcion;
	private String emicion;
	private String direcsionNotifi;
	private String distritoNotifi;
	private String correo;
	private long telefono;
	
	//cod de llave foranea se convertira a string
	private String tipoTramite;
	
	//generando metodos geter and seters
	public int getCodIdentificacion() {
		return codIdentificacion;
	}

	public void setCodIdentificacion(int codIdentificacion) {
		this.codIdentificacion = codIdentificacion;
	}

	public String getTipContribuyente() {
		return tipContribuyente;
	}

	public void setTipContribuyente(String tipContribuyente) {
		this.tipContribuyente = tipContribuyente;
	}

	public long getNumRuc() {
		return numRuc;
	}

	public void setNumRuc(long numRuc) {
		this.numRuc = numRuc;
	}

	public String getRazon() {
		return razon;
	}

	public void setRazon(String razon) {
		this.razon = razon;
	}

	public Date getInicioActividad() {
		return inicioActividad;
	}

	public void setInicioActividad(Date inicioActividad) {
		this.inicioActividad = inicioActividad;
	}

	public long getNumDni() {
		return numDni;
	}

	public void setNumDni(long numDni) {
		this.numDni = numDni;
	}

	public String getContribuyente() {
		return contribuyente;
	}

	public void setContribuyente(String contribuyente) {
		this.contribuyente = contribuyente;
	}

	public String getEstadoContribuyente() {
		return estadoContribuyente;
	}

	public void setEstadoContribuyente(String estadoContribuyente) {
		this.estadoContribuyente = estadoContribuyente;
	}

	public Date getFechaInscripcion() {
		return fechaInscripcion;
	}

	public void setFechaInscripcion(Date fechaInscripcion) {
		this.fechaInscripcion = fechaInscripcion;
	}

	public String getEmicion() {
		return emicion;
	}

	public void setEmicion(String emicion) {
		this.emicion = emicion;
	}

	public String getDirecsionNotifi() {
		return direcsionNotifi;
	}

	public void setDirecsionNotifi(String direcsionNotifi) {
		this.direcsionNotifi = direcsionNotifi;
	}

	public String getDistritoNotifi() {
		return distritoNotifi;
	}

	public void setDistritoNotifi(String distritoNotifi) {
		this.distritoNotifi = distritoNotifi;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public long getTelefono() {
		return telefono;
	}

	public void setTelefono(long telefono) {
		this.telefono = telefono;
	}

	public String getTipoTramite() {
		return tipoTramite;
	}

	public void setTipoTramite(String tipoTramite) {
		this.tipoTramite = tipoTramite;
	}
	
	

}
