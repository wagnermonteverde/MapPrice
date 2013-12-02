package br.com.price.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.price.model.User;

public class DAOUser extends DAO<User> {

	public DAOUser(Class<User> classe) {
		super(classe);
	}

	public User consultaEmail(String mail) {
		User u = null;
		EntityManager em = new JPAUtil().getEntityManager();
		Query query = em.createQuery("select u from User u where u.email = '"
				+ mail + "'", User.class);
		List<User> users = null;
		try {

			users = (List<User>) query.getResultList();
			u = users.get(0);

		} catch (Exception e) {

			em.close();
			return null;
		}
		em.close();
		return u;

	}

}
