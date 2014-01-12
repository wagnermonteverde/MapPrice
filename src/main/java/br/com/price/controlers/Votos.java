package br.com.price.controlers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class Votos {
	
	
	@RequestMapping("voto")
	public @ResponseBody String voto() {
		String falso ="false";
		return falso;
		
	}

}
