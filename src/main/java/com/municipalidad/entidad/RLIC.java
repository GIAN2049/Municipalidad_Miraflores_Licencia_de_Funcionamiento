package com.municipalidad.entidad;

import java.sql.Date;

public class RLIC {
	private int codRlic;
	private long numeroRuc;
	private String razonSocial;
	private Date inicioActividad;
	private String actividadComercial;
	private String nombreComercial;
	private String direcsionNegocio;
	private String distrito;
	private String tipoLicencia;
	private String firmaSubgerente;
	private Date fechaFirma;
	private byte[] sellado;
	private String nombreSellado;
	
	//generando geter and seters
	public int getCodRlic() {
		return codRlic;
	}
	public void setCodRlic(int codRlic) {
		this.codRlic = codRlic;
	}
	public long getNumeroRuc() {
		return numeroRuc;
	}
	public void setNumeroRuc(long numeroRuc) {
		this.numeroRuc = numeroRuc;
	}
	public String getRazonSocial() {
		return razonSocial;
	}
	public void setRazonSocial(String razonSocial) {
		this.razonSocial = razonSocial;
	}
	public Date getInicioActividad() {
		return inicioActividad;
	}
	public void setInicioActividad(Date inicioActividad) {
		this.inicioActividad = inicioActividad;
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
	public String getDirecsionNegocio() {
		return direcsionNegocio;
	}
	public void setDirecsionNegocio(String direcsionNegocio) {
		this.direcsionNegocio = direcsionNegocio;
	}
	public String getDistrito() {
		return distrito;
	}
	public void setDistrito(String distrito) {
		this.distrito = distrito;
	}
	public String getTipoLicencia() {
		return tipoLicencia;
	}
	public void setTipoLicencia(String tipoLicencia) {
		this.tipoLicencia = tipoLicencia;
	}
	public byte[] getSellado() {
		return sellado;
	}
	public void setSellado(byte[] sellado) {
		this.sellado = sellado;
	}
	public String getNombreSellado() {
		return nombreSellado;
	}
	public void setNombreSellado(String nombreSellado) {
		this.nombreSellado = nombreSellado;
	}
	public String getFirmaSubgerente() {
		return firmaSubgerente;
	}
	public void setFirmaSubgerente(String firmaSubgerente) {
		this.firmaSubgerente = firmaSubgerente;
	}
	public Date getFechaFirma() {
		return fechaFirma;
	}
	public void setFechaFirma(Date fechaFirma) {
		this.fechaFirma = fechaFirma;
	}
	

}
