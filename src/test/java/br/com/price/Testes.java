package br.com.price;

import java.util.Calendar;

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
//		
//	Date date = new Date();
//	System.out.println(date);
		
		
		 // Data inicial
        Calendar dataInicio = Calendar.getInstance();
        // Atribui a data de 10/FEV/2008
        dataInicio.set(2013, Calendar.NOVEMBER, 30);
        // Data de hoje
        Calendar dataFinal = Calendar.getInstance();
        // Calcula a diferença entre hoje e da data de inicio
        long diferenca = dataFinal.getTimeInMillis() -
                         dataInicio.getTimeInMillis();
        // Quantidade de milissegundos em um dia
        int tempoDia = 1000 * 60 * 60 * 24;
        long diasDiferenca = diferenca / tempoDia;
        System.out.println("Entre a data inicial e final são " +
                            diasDiferenca + " dias de diferença.");

	}

}
