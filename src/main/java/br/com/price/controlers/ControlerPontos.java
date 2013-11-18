package br.com.price.controlers;




import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.price.logic.GetPontos;



@Controller
public class ControlerPontos {

	@RequestMapping("/pontos")
	public @ResponseBody
	String name() {

		return GetPontos.get();

	}

}
