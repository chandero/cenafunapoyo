package com.funapoyo.presion;

import java.util.List;

public class Reportar {
	
	private Integer id_asesor;
	private String asesor;
	private String email;
	private List<Colocacion> colocaciones;
	
	public Integer getId_asesor() {
		return id_asesor;
	}
	public void setId_asesor(Integer id_asesor) {
		this.id_asesor = id_asesor;
	}
	public String getAsesor() {
		return asesor;
	}
	public void setAsesor(String asesor) {
		this.asesor = asesor;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public List<Colocacion> getColocaciones() {
		return colocaciones;
	}
	public void setColocaciones(List<Colocacion> colocaciones) {
		this.colocaciones = colocaciones;
	}
}
