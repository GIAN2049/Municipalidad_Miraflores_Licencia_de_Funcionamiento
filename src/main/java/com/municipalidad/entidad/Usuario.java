package com.municipalidad.entidad;

public class Usuario {
	private int codigo;
	private String login;
	private String clave;
	private String nombre;
	private String apellido;
	private int edad;
	private char estado;
	
	//generando geter and seters
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}
	public char getEstado() {
		return estado;
	}
	public void setEstado(char estado) {
		this.estado = estado;
	}
	

}
