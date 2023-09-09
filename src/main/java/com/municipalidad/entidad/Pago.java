package com.municipalidad.entidad;

public class Pago {
	private int codPago;
	private String nombreApellido;
	private long dni;
	private byte[] sellado;
	private String nombreSellado;
	
	//generando getern and seters
	public int getCodPago() {
		return codPago;
	}
	public void setCodPago(int codPago) {
		this.codPago = codPago;
	}
	public String getNombreApellido() {
		return nombreApellido;
	}
	public void setNombreApellido(String nombreApellido) {
		this.nombreApellido = nombreApellido;
	}
	public long getDni() {
		return dni;
	}
	public void setDni(long dni) {
		this.dni = dni;
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

	
}
