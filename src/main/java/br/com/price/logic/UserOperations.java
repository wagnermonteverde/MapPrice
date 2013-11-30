package br.com.price.logic;

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
	
	public User loginUser(String token) {
		return null;
	}

	
	/*
	 * 
	 * Faz update das informações do usuario
	 * no facebook
	 * 
	 */
	public User updateUser(User user) {
		return null;
	}
	
	/*
	 * 
	 * Cadastra usuário no sistema
	 * 
	 */
	public User cadastraUser(User user) {
		return null;
	}
	
	
	/*
	 * 
	 * Verifica alteração no perfil do facebook
	 * 
	 */
	public User verificaAlteracaoPerfil(User user) {
		return null;
	}

}
