package br.com.price.controlers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.price.dao.DAO;
import br.com.price.logic.PrePromotionPersist;
import br.com.price.model.Promocao;

@Controller
public class ControlerCadastroPreco {

	@RequestMapping("/cadastraponto")
	public ModelAndView cadastroPonto(
			@RequestParam("txtLatitude") String latidude,
			@RequestParam("txtLongitude") String longitude) {

		ModelAndView mv;

		if (latidude.equals("")) {
			
			mv = new ModelAndView("mapa");
			mv.addObject("erro", "Preencha o Endereço Por Favor :(");
			
		} else {
			
			mv = new ModelAndView("formpreco");
			mv.addObject("latitude", latidude);
			mv.addObject("longitude", longitude);
		}
		
		return mv;

	}

	@RequestMapping("/cadastrapreco")
	public String cacastraPromocao(@ModelAttribute Promocao promocao) {
		DAO<Promocao> daoPromocao = new DAO<Promocao>(Promocao.class);
		promocao = PrePromotionPersist.adequapromocao(promocao);
		daoPromocao.adiciona(promocao);
		return "mapaoferta";
	}
}
