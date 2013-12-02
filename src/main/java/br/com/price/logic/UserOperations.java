package br.com.price.logic;

import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.FacebookProfile;
import org.springframework.social.facebook.api.impl.FacebookTemplate;

import br.com.price.dao.DAOUser;
import br.com.price.model.User;

/*
 * 
 * Classe responsavel por todas as
 * operações do usuário 
 * 
 * 
 */

public class UserOperations {

	/*
	 * 
	 * @param String token
	 * 
	 * @return User
	 * 
	 * Responsavel por verificar se é o promeiro acesso do usuario;
	 * 
	 * Caso primeiro acesso cadastra usuario no banco, caso ja tenha acessado
	 * faz verificação se exise alguma alteração no perfil do usuário e faz
	 * update.
	 */

	private static User userBd;

	public User loginUser(String token) {

		User userface = populaUser(token);

		if (isRegistered(userface) != null) {

			if (verificaAlteracaoPerfil(userface)) {
				return updateUser(userface);
			} else {
				return userface;
			}

		} else {

			return cadastraUser(userface);

		}

	}

	/*
	 * 
	 * Faz update das informações do usuario no facebook
	 */
	private User updateUser(User user) {

		userBd.setName(user.getName());
		userBd.setSobrenome(user.getSobrenome());
		return userBd;
	}

	/*
	 * 
	 * Cadastra usuário no bancao de dados
	 */
	private User cadastraUser(User user) {
		DAOUser dao = new DAOUser(User.class);
		dao.adiciona(user);
		return dao.consultaEmail(user.getEmail());
	}

	/*
	 * 
	 * Verifica alteração no perfil do facebook
	 */
	private  boolean verificaAlteracaoPerfil(User user) {

		if (!userBd.getName().equals(user.getName())) {
			return true;
		}

		if (!userBd.getSobrenome().equals(user.getSobrenome())) {
			return true;
		}

		return false;
	}

	/*
	 * 
	 * Verifica se usuario é cadastrado
	 */

	private  User isRegistered(User user) {
		DAOUser dao = new DAOUser(User.class);
		userBd = dao.consultaEmail(user.getEmail());
		return userBd;
	}

	/*
	 * 
	 * Popula Objeto User com os dados do perfil do facebook
	 */
	private  User populaUser(String token) {

		Facebook facebook = new FacebookTemplate(token);
		FacebookProfile profile = facebook.userOperations().getUserProfile();
		User user = new User();

		user.setName(profile.getFirstName());
		user.setSobrenome(profile.getLastName());
		user.setToken(token);
		user.setEmail(profile.getEmail());
		user.setCadastrar(true);
		user.setIdFacebook(profile.getId());

		return user;
	}

}
