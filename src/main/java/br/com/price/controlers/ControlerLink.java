package br.com.price.controlers;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.price.logic.UserOperations;

@Controller
public class ControlerLink {

	@RequestMapping("/mapa")
	public String inicio() {
		return "mapa";
	}

	@RequestMapping("/mapaoferta")
	public String mapaoferta() {
		return "mapaoferta";
	}

	@RequestMapping("/login")
	public String mapa(@RequestParam("token") String token, HttpSession session) {
		UserOperations userOperations = new UserOperations();
		session.setAttribute("user",userOperations.loginUser(token));
//		System.err.println(userOperations.loginUser(token).getId());
		return "redirect:timeline";
	}

	
	
	@RequestMapping("/logof")
	public String logout() {
		return "redirect:/";
	}
	
	
	@RequestMapping("/votacao")
	public String votos() {
		return "votos";
	}


}
