package com.municipalidad.entidad;

public class Formulario {
	private int codFormulario;
	private String destinario;
	private String correo;
	private String asunto;
	private String mensaje;
	
	//generando geter and seters
	public int getCodFormulario() {
		return codFormulario;
	}
	public void setCodFormulario(int codFormulario) {
		this.codFormulario = codFormulario;
	}
	public String getDestinario() {
		return destinario;
	}
	public void setDestinario(String destinario) {
		this.destinario = destinario;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getAsunto() {
		return asunto;
	}
	public void setAsunto(String asunto) {
		this.asunto = asunto;
	}
	public String getMensaje() {
		return mensaje;
	}
	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}
}
