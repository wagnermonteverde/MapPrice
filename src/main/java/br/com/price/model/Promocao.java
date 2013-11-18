package br.com.price.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Promocao{

	
	

	/*
	 * 
	 * Variaveis em amiusculo devido a bivlioteca Gjon e aplicação
	 * javascript q precisa de variaveis com iniciais maiusculas :)
	 * gambi :)
	 * 
	 */
	
	
	/**
	 * 
	 */

	@Id
	@GeneratedValue
	private long Id;

	private Double Preco;

	private String Descricao;

	private Integer DiasDuracao;

	private String Imagem;

	private String Hint;

	private String Longitude;

	private String Latitude;

	private String LocalDescription;

	public Double getPreco() {
		return Preco;
	}

	public void setPreco(Double preco) {
		Preco = preco;
	}

	public String getDescricao() {
		return Descricao;
	}

	public void setDescricao(String descricao) {
		Descricao = descricao;
	}

	public Integer getDiasDuracao() {
		return DiasDuracao;
	}

	public void setDiasDuracao(Integer diasDuracao) {
		DiasDuracao = diasDuracao;
	}

	public String getImagem() {
		return Imagem;
	}

	public void setImagem(String imagem) {
		Imagem = imagem;
	}

	public String getHint() {
		return Hint;
	}

	public void setHint(String hint) {
		Hint = hint;
	}

	public String getLongitude() {
		return Longitude;
	}

	public void setLongitude(String longitude) {
		Longitude = longitude;
	}

	public String getLatitude() {
		return Latitude;
	}

	public void setLatitude(String latitude) {
		Latitude = latitude;
	}

	public String getLocalDescription() {
		return LocalDescription;
	}

	public void setLocalDescription(String localDescription) {
		LocalDescription = localDescription;
	}

	public long getId() {
		return Id;
	}

	
	
	

}
