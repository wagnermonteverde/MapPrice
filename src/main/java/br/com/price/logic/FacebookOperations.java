package br.com.price.logic;

import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.FacebookLink;
import org.springframework.social.facebook.api.impl.FacebookTemplate;

import br.com.price.model.User;

/**
 * 
 * @author wagner
 * 
 * Classe que encapsula operações no facebook
 * 
 */

public class FacebookOperations {

	private Facebook facebook;
	private FacebookLink link;

	/**
	 * 
	 * Método responsável por postar status básico
	 * 
	 */

	public void postStatusFacebook(User user, String status) {
		facebook = new FacebookTemplate(user.getToken());
		facebook.feedOperations().updateStatus(status);
	}

	/**
	 * 
	 * Metodo responável por postar link
	 * 
	 */
	public void postLinkFacebook(User user, String linkString,
			String description, String caption, String name) {
		facebook = new FacebookTemplate(user.getToken());
		link = new FacebookLink(linkString, name, caption, description);
		facebook.feedOperations().postLink(caption, link);
	}

}
