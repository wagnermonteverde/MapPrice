package br.com.price.controlers;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.price.dao.DAO;
import br.com.price.logic.PrePromotionPersist;
import br.com.price.model.Promocao;

@Controller
public class ControlerPreco {

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
	public ModelAndView cacastraPromocao(
			@ModelAttribute @Valid Promocao promocao, BindingResult result) {
		ModelAndView mv;

		if (result.hasFieldErrors()) {
			mv = new ModelAndView("formpreco");

			if (promocao.getDescricao().equals("")
					|| promocao.getDescricao().length() < 5) {
				mv.addObject("errdescricao",
						"Descrição nao pode estar em Branco ou menor que 5 caracteres");
			}

			if (promocao.getLocalDescription().equals("")
					|| promocao.getLocalDescription().length() < 5) {
				mv.addObject("errlocal",
						"Local nao pode estar em Branco ou menor que 5 caracteres");
			}

			if (promocao.getPreco().equals("")
					|| promocao.getPreco().length() < 3) {
				mv.addObject("errpreco",
						"Preço nao pode estar em Branco ou menor que 5 caracteres");
			}

			return mv;

		} else {

			mv = new ModelAndView("mapaoferta");

			DAO<Promocao> daoPromocao = new DAO<Promocao>(Promocao.class);
			promocao = PrePromotionPersist.adequapromocao(promocao);
			daoPromocao.adiciona(promocao);

			return mv;
		}

	}

	@RequestMapping("timeline")
	public ModelAndView returnPrecos() {
		ModelAndView mv = new ModelAndView("exibe");

		DAO<Promocao> DAOpromocao = new DAO<Promocao>(Promocao.class);

		List<Promocao> listPromocao = DAOpromocao.listaTodos();

		for (Promocao promocao : listPromocao) {
			System.out.println(promocao.getDescricao());
			
		}
		mv.addObject("lista", listPromocao);

		return mv;

	}

}
