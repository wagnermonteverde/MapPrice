package br.com.price.logic;

import org.apache.taglibs.standard.lang.jstl.ELException;
import org.hibernate.tuple.ElementWrapper;

import br.com.price.model.Promocao;

public class PrePromotionPersist {

	private static final String ALIMENTOS = "/price/resources/img/mapicons/food.png";
	private static final String ELETRONICOS = "/price/resources/img/mapicons/phones.png";
	private static final String VESTUARIO = "/price/resources/img/mapicons/vest.png";
	private static final String ALIMENTOSTIMELINE = "/price/resources/img/alimentos.png";
	private static final String ELETRONICOSTIMELINE= "/price/resources/img/eletronics.png";
	private static final String VESTUARIOTIMELINE = "/price/resources/img/vestuario.png";
	private static final String HINT_ALIMENTOS ="Alimentos em Promocao";
	private static final String HINT_ELETRONICOS ="Eletronicos em Promocao";
	private static final String HINT_VESTUARIO ="Vestuario em Promocao";
	public static Promocao adequapromocao(Promocao promocao) {

		return setCategoria(promocao);
	}

	private static Promocao setCategoria(Promocao promocao) {
		// <option value="1">Alimentação</option>
		// <option value="2">Vestuario</option>
		// <option value="3">Eletronicos</option>

		if (promocao.getImagem().equals("1")) {

			promocao.setImagem(ALIMENTOS);
			promocao.setHint(HINT_ALIMENTOS);
			promocao.setImgDescricao(ALIMENTOSTIMELINE);
			promocao.setCategoria("Alimentos");

		} else if (promocao.getImagem().equals("2")) {

			promocao.setImagem(VESTUARIO);
			promocao.setHint(HINT_VESTUARIO);
			promocao.setImgDescricao(VESTUARIOTIMELINE);
			promocao.setCategoria("Vestuario");

		} else if (promocao.getImagem().equals("3")) {

			promocao.setImagem(ELETRONICOS);
			promocao.setHint(HINT_ELETRONICOS);
			promocao.setImgDescricao(ELETRONICOSTIMELINE);
			promocao.setCategoria("Eletronicos");

		}

		return promocao;
	}

}
