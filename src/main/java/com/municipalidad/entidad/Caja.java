package com.municipalidad.entidad;

import java.sql.Date;

public class Caja {
	private int codigo;
	
	private String numeroCom;
	private String nombre;
	private String direccion;	
	private long dni;
	private Date fecha;
	private int cantidad;
	private String descripcion;
	private double total;
	
	
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getNumeroCom() {
		return numeroCom;
	}
	public void setNumeroCom(String numeroCom) {
		this.numeroCom = numeroCom;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public long getDni() {
		return dni;
	}
	public void setDni(long dni) {
		this.dni = dni;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	
	
	
}
