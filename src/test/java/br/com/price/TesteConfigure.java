package br.com.price;

//import javax.persistence.EntityManager;
//import javax.persistence.EntityManagerFactory;
//import javax.persistence.Persistence;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.google.gson.Gson;

import br.com.price.dao.DAO;
import br.com.price.model.Promocao;
import br.com.price.model.User;

public class TesteConfigure {

	public static void main(String[] args) {


		
		DAO<User> daoUser = new DAO<User>(User.class);
		
		User user = new User();
		
		user.setEmail("wagnermonte@hotmail.com");
		user.setName("wagner");
		
		daoUser.adiciona(user);
		Calendar date = Calendar.getInstance();

//		String ponto = "[{\"Id\": 1,  \"Latitude\": -24.0273973447393, \"Longitude\": -52.01225890527951,\"Descricao\": \"Conte√∫do do InfoBox 1\",\"Imagen\" : \"/price/resources/img/supermarket.png\",\"Hint\": \" Meu Hint Personalizado <br> Mo fera\" },";

		DAO<Promocao> dao = new DAO<Promocao>(Promocao.class);
		
		Promocao promocao = new Promocao();
		promocao.setDescricao("Gr„o de Bico");
		promocao.setDiasDuracao(2);
		promocao.setHint("Promocao Alimentos Confira");
		promocao.setImagem("/price/resources/img/mapicons/food.png");
		promocao.setImgDescricao("/price/resources/img/alimentos.png");
		promocao.setPreco("200.00");
        promocao.setLatitude("-24.0273973447393");
        promocao.setLongitude("-52.01225890527951");
        promocao.setLocalDescription("Vianet Informatica");
        promocao.setCategoria("Alimentos");
        promocao.setDataCadstro(date);
        
        
        Promocao promocao1 = new Promocao();
		promocao1.setDescricao("CUeiro infantil");
		promocao1.setDiasDuracao(2);
		promocao1.setHint("Promocao Vestuario Confira");
		promocao1.setImagem("/price/resources/img/mapicons/vest.png");
		promocao1.setPreco("200.00");
		promocao1.setImgDescricao("/price/resources/img/vestuario.png");
		promocao1.setLatitude("-24.027607300303135");
		promocao1.setLongitude("-52.010970355169661");
		promocao1.setLocalDescription("Vianet Informatica");
		promocao1.setCategoria("Eletronicos");
		 promocao1.setDataCadstro(date);
 
        
        Promocao promocao2 = new Promocao();
		promocao2.setDescricao("Nokia Lumia");
		promocao2.setDiasDuracao(2);
		promocao2.setHint("Promocao Eletronicos Confira");
		promocao2.setImagem("/price/resources/img/mapicons/phones.png");
		promocao2.setImgDescricao("/price/resources/img/eletronics.png");
		promocao2.setPreco("200.00");
        promocao2.setLatitude("-24.0224136322735");
        promocao2.setLongitude("-52.00180792917479");
        promocao2.setLocalDescription("Vianet Informatica");
        promocao2.setCategoria("Vestuario");
        promocao2.setDataCadstro(date);

        
        dao.adiciona(promocao);
        dao.adiciona(promocao1);
        dao.adiciona(promocao2);
        
//        Gson gson = new Gson();
        
        List<Promocao> listaPromocao = new ArrayList<Promocao>();
        
        listaPromocao.add(promocao);
        listaPromocao.add(promocao1);
        listaPromocao.add(promocao2);
        
//        System.out.println(gson.toJson(lisCtaPromocao));
		
		
	}

}
