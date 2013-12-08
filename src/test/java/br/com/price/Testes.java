package br.com.price;

import java.util.Date;
import java.util.List;

import br.com.price.dao.DAO;
import br.com.price.model.Promocao;

import com.google.gson.Gson;

public class Testes {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//		DAO<Promocao> dao = new DAO<Promocao>(Promocao.class);
//
//		List<Promocao> listaPromocao = dao.listaTodos();
//
//		for (Promocao promocao : listaPromocao) {
//			System.out.println(promocao.getImgDescricao());
//		}
		
	Date date = new Date();
	System.out.println(date);

	}

}
