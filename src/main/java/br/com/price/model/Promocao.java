package br.com.price.model;

import java.util.Calendar;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;




@Entity
public class Promocao{

	/**
	 * 
	 * 
	 * Variaveis em amiusculo devido a biblioteca Gjon e aplicação
	 * javascript q precisa de variaveis com iniciais maiusculas :)
	 * gambi :)
	 * 
	 * 
	 * 
	 */

	@Id
	@GeneratedValue
	private long Id;

    @NotNull
	private String Preco;
    @NotNull  @Size(min=5)
	private String Descricao;

	private Integer DiasDuracao;

	private String Imagem;
	
	private String imgDescricao;

	private String Hint;

	private String Longitude;

	private String Latitude;

	private String LocalDescription;
	
	private String cidade;
	
	private String categoria;
	
	private  Calendar dataCadstro;

	public long getId() {
		return Id;
	}

	
	public String getPreco() {
		return Preco;
	}

	public void setPreco(String preco) {
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

	public String getImgDescricao() {
		return imgDescricao;
	}

	public void setImgDescricao(String imgDescricao) {
		this.imgDescricao = imgDescricao;
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

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}


	public Calendar getDataCadstro() {
		return dataCadstro;
	}


	public void setDataCadstro(Calendar dataCadstro) {
		this.dataCadstro = dataCadstro;
	}


	

	

}
