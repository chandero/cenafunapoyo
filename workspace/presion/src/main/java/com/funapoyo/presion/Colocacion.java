package com.funapoyo.presion;

public class Colocacion {

	
	private String id_colocacion;
	private String fecha_proximo_pago;
	private String asociado;
	private String telefonos;
	private String direccion;
	private Boolean vencida;
	private String email;
	
	public String getId_colocacion() {
		return id_colocacion;
	}
	public void setId_colocacion(String id_colocacion) {
		this.id_colocacion = id_colocacion;
	}
	public String getFecha_proximo_pago() {
		return fecha_proximo_pago;
	}
	public void setFecha_proximo_pago(String fecha_proximo_pago) {
		this.fecha_proximo_pago = fecha_proximo_pago;
	}
	public String getAsociado() {
		return asociado;
	}
	public void setAsociado(String asociado) {
		this.asociado = asociado;
	}
	public String getTelefonos() {
		return telefonos;
	}
	public void setTelefonos(String telefonos) {
		this.telefonos = telefonos;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public Boolean getVencida() {
		return vencida;
	}
	public void setVencida(Boolean vencida) {
		this.vencida = vencida;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
