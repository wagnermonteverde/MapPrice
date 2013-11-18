package br.com.price;

//import javax.persistence.EntityManager;
//import javax.persistence.EntityManagerFactory;
//import javax.persistence.Persistence;

import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;

import br.com.price.dao.DAO;
import br.com.price.model.Promocao;
import br.com.price.model.User;

public class TesteConfigure {

	public static void main(String[] args) {


		
		DAO<User> daoUser = new DAO<User>(User.class);
		
		User user = new User();
		
		user.setEmail("wagnermonteverde@hotmail.com");
		user.setName("wagner");
		user.setPassword("123");
		
		daoUser.adiciona(user);
		

//		String ponto = "[{\"Id\": 1,  \"Latitude\": -24.0273973447393, \"Longitude\": -52.01225890527951,\"Descricao\": \"ConteÃºdo do InfoBox 1\",\"Imagen\" : \"/price/resources/img/supermarket.png\",\"Hint\": \" Meu Hint Personalizado <br> Mo fera\" },";

		DAO<Promocao> dao = new DAO<Promocao>(Promocao.class);
		
		Promocao promocao = new Promocao();
		promocao.setDescricao("Promoção da boa pode comprar que é bão");
		promocao.setDiasDuracao(2);
		promocao.setHint("Promoção Alimentos Confira");
		promocao.setImagem("/price/resources/img/mapicons/vest.png");
		promocao.setPreco(200.00);
        promocao.setLatitude("-24.0273973447393");
        promocao.setLongitude("-52.01225890527951");
        promocao.setLocalDescription("Vianet Informatica");
        
        
        Promocao promocao1 = new Promocao();
		promocao1.setDescricao("Promoção da boa pode comprar que é bão");
		promocao1.setDiasDuracao(2);
		promocao1.setHint("Promoção Alimentos Confira");
		promocao1.setImagem("/resources/img/mapicons/phones.png");
		promocao1.setPreco(200.00);
		promocao1.setLatitude("-24.027607300303135");
		promocao1.setLongitude("-52.010970355169661");
		promocao1.setLocalDescription("Vianet Informatica");
 
        
        Promocao promocao2 = new Promocao();
		promocao2.setDescricao("Promoção da boa pode comprar que é bão");
		promocao2.setDiasDuracao(2);
		promocao2.setHint("Promoção Alimentos Confira");
		promocao2.setImagem("/price/resources/img/mapicons/food.png");
		promocao2.setPreco(200.00);
        promocao2.setLatitude("-24.0224136322735");
        promocao2.setLongitude("-52.00180792917479");
        promocao2.setLocalDescription("Vianet Informatica");

        
        dao.adiciona(promocao);
        dao.adiciona(promocao1);
        dao.adiciona(promocao2);
        
        Gson gson = new Gson();
        
        List<Promocao> listaPromocao = new ArrayList<Promocao>();
        
        listaPromocao.add(promocao);
        listaPromocao.add(promocao1);
        listaPromocao.add(promocao2);
        
        System.out.println(gson.toJson(listaPromocao));
		
		
	}

}
