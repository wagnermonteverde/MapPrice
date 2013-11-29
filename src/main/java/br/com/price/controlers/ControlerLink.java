package br.com.price.controlers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;





@Controller
public class ControlerLink {

	@RequestMapping("/mapa")
	public String inicio() {
		return "mapa";
	}

	@RequestMapping("/login")
	public String mapa(@RequestParam("token") String token) {

		System.out.println(token);

		Facebook facebook = new FacebookTemplate(token);

		ModelAndView mv = new ModelAndView("mapaoferta");

		return "redirect:unico";
	}

	@RequestMapping("/unico")
	public String exibe() {
		return "exibe";
	}

}
