<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Sistema de vota��o simples com PHP/JQuery/AJAX</title>
<script type="text/javascript" language="javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.js"></script>

<script type="text/javascript">
	$(function($) {
		// Quando clicando em uma imagem da div que tem CLASS = frase
		$("div.frase img")
				.click(
						function() {
							// Recupera o ID da frase que est� na propriedade LANG da DIV-PAI da imagem e que tem CLASS = frase
							var id = $(this).parent("div.frase").attr("lang");
							// Recupera o tipo (bom|ruim) que est� na propriedade ALT da imagem clicada
							var tipo = $(this).attr("alt");
							// Seleciona o SPAN onde est�o os votos
							var votos = $("div[lang=" + id + "] span." + tipo
									+ " span.valor");
							// Seleciona a DIV onde ser�o colocadas as mensagens
							var status = $("div[lang=" + id + "] div.status");

							// Mensagem de carregando
							status
									.html("<img src='resources/votos/loader.gif' alt='Carregando...' />");

							// Faz a requisi��o AJAX
							$.post("http://localhost:8080/price/votar", {
								id : id,
								tipo : tipo
							}, function(resposta) {
								// Se houver uma mensagem na resposta, exibe a mensagem
								if (resposta) {
									status.html(resposta);
								}
								// Quando a resposta for FALSE 
								else {
									// Incrementa mais um aos votos
									votos.html(parseInt(votos.html()) + 1);
									// Mensagem de sucesso
									status.html("Obrigado por votar!");
								}
							});

						});
	});
</script>

<style type="text/css">
body {
	font-family: "Trebuchet MS";
	font-size: 12px;
	margin-left: 15px;
}

h1 {
	font-size: 16px;
	border-bottom: 1px dashed #CCC;
}

div.frase {
	margin-bottom: 15px;
}

div.frase span.bom {
	color: green;
}

div.frase span.ruim {
	color: red;
}

div.frase img {
	vertical-align: bottom;
	cursor: pointer;
}

div.frase div.status {
	color: #999;
}
</style>

</head>

<body>
	<h1>Sistema de vota��o simples com PHP/JQuery/AJAX</h1>



	<div class="frase" lang="1">
		<div class="texto">frase</div>

		<img src="resources/votos/positivo.png" alt="bom" /> <span class="bom">
			<span class="valor">12</span>
		</span> <img src="resources/votos/negativo.png" alt="ruim" /> <span class="ruim">
			<span class="valor">13</span>
		</span>

		<div class="status"></div>
	</div>


</body>
</html>