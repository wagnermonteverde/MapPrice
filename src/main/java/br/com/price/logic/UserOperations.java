package br.com.price.logic;

import br.com.price.model.User;

/*
 * 
 * Classe responsavel por todas as
 * opera��es do usu�rio 
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
	 * Responsavel por verificar se � o promeiro acesso do usuario;
	 * 
	 * Caso primeiro acesso cadastra usuario no banco, caso ja tenha acessado
	 * faz verifica��o se exise alguma altera��o no perfil do usu�rio e faz
	 * update.
	 */
	
	public User loginUser(String token) {
		return null;
	}

	
	/*
	 * 
	 * Faz update das informa��es do usuario
	 * no facebook
	 * 
	 */
	public User updateUser(User user) {
		return null;
	}
	
	/*
	 * 
	 * Cadastra usu�rio no sistema
	 * 
	 */
	public User cadastraUser(User user) {
		return null;
	}
	
	
	/*
	 * 
	 * Verifica altera��o no perfil do facebook
	 * 
	 */
	public User verificaAlteracaoPerfil(User user) {
		return null;
	}

}
