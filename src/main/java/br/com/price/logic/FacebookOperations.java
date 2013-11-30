package br.com.price.logic;

import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.FacebookLink;
import org.springframework.social.facebook.api.impl.FacebookTemplate;

/**
 * 
 * @author wagner
 * 
 * Classe que encapsula opera��es no facebook
 * 
 */

public class FacebookOperations {

	private Facebook facebook;
	private FacebookLink link;

	/**
	 * 
	 * M�todo respons�vel por postar status b�sico
	 * 
	 */

	public void postStatusFacebook(String token, String status) {
		facebook = new FacebookTemplate(token);
		facebook.feedOperations().updateStatus(status);
	}

	/**
	 * 
	 * Metodo respon�vel por postar link
	 * 
	 */
	public void postLinkFacebook(String token, String linkString,
			String description, String caption, String name) {
		facebook = new FacebookTemplate(token);
		link = new FacebookLink(linkString, name, caption, description);
		facebook.feedOperations().postLink(caption, link);
	}

}
