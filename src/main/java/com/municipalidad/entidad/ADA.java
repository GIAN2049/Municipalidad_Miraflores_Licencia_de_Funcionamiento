package com.municipalidad.entidad;

import java.sql.Date;

public class ADA {
	private int codigo;
	private long numeroExpediente;
	private String responsable;
	private long dni;
	private double monto;
	private Date fechaRecepcion;
	private String estado;
	private String observaciones;
	private Date fechaRevision;
	
	public Date getFechaRevision() {
		return fechaRevision;
	}
	public void setFechaRevision(Date fechaRevision) {
		this.fechaRevision = fechaRevision;
	}
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public long getNumeroExpediente() {
		return numeroExpediente;
	}
	public void setNumeroExpediente(long numeroExpediente) {
		this.numeroExpediente = numeroExpediente;
	}
	public String getResponsable() {
		return responsable;
	}
	public void setResponsable(String responsable) {
		this.responsable = responsable;
	}
	public long getDni() {
		return dni;
	}
	public void setDni(long dni) {
		this.dni = dni;
	}
	public double getMonto() {
		return monto;
	}
	public void setMonto(double monto) {
		this.monto = monto;
	}
	public Date getFechaRecepcion() {
		return fechaRecepcion;
	}
	public void setFechaRecepcion(Date fechaRecepcion) {
		this.fechaRecepcion = fechaRecepcion;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getObservaciones() {
		return observaciones;
	}
	public void setObservacione(String observaciones) {
		this.observaciones = observaciones;
	}
}
