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

	@RequestMapping("/login")
	public String mapa(@RequestParam("token") String token, HttpSession session) {
		UserOperations userOperations = new UserOperations();
		
		userOperations.loginUser(token);
		
		
		return "redirect:unico";
	}

	@RequestMapping("/unico")
	public String exibe() {
		return "exibe";
	}

}
