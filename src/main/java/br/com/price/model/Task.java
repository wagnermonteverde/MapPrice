/**
 * 
 */
package br.com.price.model;

import javax.inject.Singleton;

import org.springframework.scheduling.annotation.Scheduled;

/**
 * @author Wagner-ultra
 *
 */

@Singleton
public class Task {
	
	private static int CONTADOR = 0;
	
	@Scheduled(cron="*/5 * * * * ?")
	public void run(){
		
		System.err.println("tarefa sendo executada acada cinco segundos: "+(CONTADOR++));
		
	}
	
	

}
