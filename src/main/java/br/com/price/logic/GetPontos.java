package br.com.price.logic;

import java.util.ArrayList;
import java.util.List;

import br.com.price.dao.DAO;
import br.com.price.model.Promocao;

import com.google.gson.Gson;

public class GetPontos {

	/*
	 * 
	 * 
	 * Metodo recebera usuario e devolvera promoções perto do mesmo
	 */
	public static String get() {

		DAO<Promocao> dao = new DAO<Promocao>(Promocao.class);

		List<Promocao> listaPromocao = dao.listaTodos();

		Gson gson = new Gson();

		System.out.println(gson.toJson(listaPromocao));

		return gson.toJson(listaPromocao);

	}

//	public static void main(String[] args) {
//
//		DAO<Promocao> dao = new DAO<Promocao>(Promocao.class);
//
//		List<Promocao> listaPromocao = dao.listaTodos();
//
//		Gson gson = new Gson();
//
//		System.out.println(gson.toJson(listaPromocao));
//	}

}
