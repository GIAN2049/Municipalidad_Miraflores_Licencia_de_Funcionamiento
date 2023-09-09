package com.municipalidad.entidad;
import java.sql.Date;

public class RSG {
	private int cod_rsg;
	private String titulo_resolucion;
	private String descripcion;
	private long numero_resolucion;
	private String responsable;
	private String departamento;
	private Date fecha_emision;
	private String firma_subGerente;
	private Date fecha_firma;
	private byte[] sellado;
	private String nombre_sellado;
	
	//generando geter and seters
	public int getCod_rsg() {
		return cod_rsg;
	}
	public void setCod_rsg(int cod_rsg) {
		this.cod_rsg = cod_rsg;
	}
	public String getTitulo_resolucion() {
		return titulo_resolucion;
	}
	public void setTitulo_resolucion(String titulo_resolucion) {
		this.titulo_resolucion = titulo_resolucion;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public long getNumero_resolucion() {
		return numero_resolucion;
	}
	public void setNumero_resolucion(long numero_resolucion) {
		this.numero_resolucion = numero_resolucion;
	}
	public String getResponsable() {
		return responsable;
	}
	public void setResponsable(String responsable) {
		this.responsable = responsable;
	}
	public String getDepartamento() {
		return departamento;
	}
	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}
	public Date getFecha_emision() {
		return fecha_emision;
	}
	public void setFecha_emision(Date fecha_emision) {
		this.fecha_emision = fecha_emision;
	}
	public String getFirma_subGerente() {
		return firma_subGerente;
	}
	public void setFirma_subGerente(String firma_subGerente) {
		this.firma_subGerente = firma_subGerente;
	}
	public Date getFecha_firma() {
		return fecha_firma;
	}
	public void setFecha_firma(Date fecha_firma) {
		this.fecha_firma = fecha_firma;
	}
	public byte[] getSellado() {
		return sellado;
	}
	public void setSellado(byte[] sellado) {
		this.sellado = sellado;
	}
	public String getNombre_sellado() {
		return nombre_sellado;
	}
	public void setNombre_sellado(String nombre_sellado) {
		this.nombre_sellado = nombre_sellado;
	}
	
}
