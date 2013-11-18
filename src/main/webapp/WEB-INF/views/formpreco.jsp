<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon"
	href="<c:url value='/resources/css/img/favicon.png'/>">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:600"
	type="text/css" rel="stylesheet" />


<script type="text/javascript"
	src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/jquery.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/boot.min.js'/>"></script>





<title>Fixed Top Navbar Example for Bootstrap</title>

<!-- Bootstrap core CSS -->
<link href="<c:url value='/resources/css/bootstrap.css'/>"
	rel="stylesheet">

<style type="text/css">

#imgpos {
	position: absolute; 
	right:300px;
	left: 300px; /* posiciona a 90px para a esquerda */ 
	top: 70px; /* posiciona a 70px para baixo */
	}
</style>


<!-- Just for debugging purposes. Don't actually copy this line! -->
<!--[if lt IE 9]><script src="../../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/home">Melhor Preço</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Inicio</a></li>
					<li><a href="#about">Sobre</a></li>
					<li><a href="#contact">Contato</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Dropdown <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Nav header</li>
							<li><a href="#">Separated link</a></li>
							<li><a href="#">One more separated link</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="../navbar/">Default</a></li>
					<li><a href="../navbar-static-top/">Static top</a></li>
					<li class="active"><a href="./">Fixed top</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>

	

		<br> <br> <br>
        <div id="imgpos">
		<form class="form-horizontal" method="POST" action="cadastrapreco">
			<div class="form-group">
				<fieldset>

					<!-- Form Name -->
					<legend>Só Mais algumas informações</legend>

					<!-- Text input-->
					<div class="control-group">
						<label class="control-label" for="textinput">Descrição</label>
						<div class="controls">
							<input id="textinput" name="Descricao" type="text"
								placeholder="Descrição" class="form-control">
							
						</div>
					</div>
					
					<!-- Text input-->
					<div class="control-group">
						<label class="control-label" for="LocalDescription">Local/Estabelecimento do Melhor Preço</label>
						<div class="controls">
							<input id="textinput" name="LocalDescription" type="text"
								placeholder="Local/Estabelecimento do Melhor Preço" class="form-control">
							
						</div>
					</div>
					

					<!-- Select Basic -->
					<div class="control-group">
						<label class="control-label" for="DiasDuracaos">Dias de Duracao do Melhor Preço (Estimado)</label>
						<div class="controls">
							<select id="selectbasic" name="DiasDuracao" class="form-control">
								<option value="1">Um Dia</option>
								<option value="2">Dois Dias</option>
								<option value="3">Três Dias</option>
								<option value="4">Quatro Dias</option>
								<option value="5">Cinco Dias</option>
								<option value="6">Seis Dias</option>
							</select>
						</div>
					</div>
					
					<!-- Select Basic -->
					<div class="control-group">
						<label class="control-label" for="DiasDuracaos">Categoria</label>
						<div class="controls">
							<select id="selectbasic" name="Imagem" class="form-control">
								<option value="1">Alimentação</option>
								<option value="2">Vestuario</option>
								<option value="3">Eletronicos</option>
							</select>
						</div>
					</div>

					 
					 <!-- Text input-->
					<div class="control-group">
						<label class="control-label" for="Preco">Preço</label>
						<div class="controls">
							<input id="textinput" name="Preco" type="text"
								placeholder="Melhor Preço" class="form-control">
							
						</div>
					</div>
					 
					<!-- Button (Double) -->
					<div class="control-group">
						<label class="control-label" for="button1id">Double Button</label>
						<div class="controls">
							<button id="button1id" name="button1id" class="btn btn-success">Cadastrar
								Melhor Preço</button>
							<button id="button2id" name="button2id" class="btn btn-danger">Cancelar</button>
						</div>
					</div>


                  <input type="text" name="Latitude" hidden="true" value="${latitude}">
                  <input type="text" name="Longitude" hidden="true" value="${longitude}">
                  
				</fieldset>
			</div>
		</form>
      </div>



	<div class="navbar navbar-inverse navbar-fixed-bottom ">
		<div class="navbar-inner">
			<div class="container">
				<form class="navbar-form pull-right" action="PesquisaProdutos?pag=1"
					method="POST">
					<input name="busca" type="search" required="Preencha o campo busca"
						placeholder="Pesquise seu lanche!" class="span5" /> <input
						class="btn-info" type="submit" value="Buscar">
				</form>
				<a class="brand" href="#"> </a>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

</body>
</html>
