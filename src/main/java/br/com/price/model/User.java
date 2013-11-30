package br.com.price.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity
public class User {
	
	@Id
	@GeneratedValue
	private long id;
	private String name;
	private String email;
	private String token;
	private Date dataCadastro;
	private boolean cadastrar;
	private String latitude;
	private String longitude;
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public Date getDatacadastro() {
		return dataCadastro;
	}
	public void setDatacadastro(Date datacadastro) {
		this.dataCadastro = datacadastro;
	}
	public boolean isCadastrar() {
		return cadastrar;
	}
	public void setCadastrar(boolean cadastrar) {
		this.cadastrar = cadastrar;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public long getId() {
		return id;
	}
	
	
	
	
	
	
	
	
	
	

		

}
