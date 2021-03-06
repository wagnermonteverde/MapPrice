<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link id="page_favicon"
	href="<c:url value='/resources/img/favicon.ico'/>" rel="icon"
	type="image/x-icon" />
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
	right: 300px;
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

	<c:import url="/resources/tiles/header.jsp" />



	<br>
	<br>
	<br>
	<div id="imgpos">
		<form class="form-horizontal" method="POST" action="cadastrapreco">
		<form:errors path="*" cssClass="errorblock" element="div" />
			<div class="form-group">
				<fieldset>

					<!-- Form Name -->
					<legend>S� Mais algumas informa��es</legend>

					<!-- Text input-->
					<div class="control-group">
						<label class="control-label" for="textinput">Descri��o</label>
						<div class="controls">
							<input id="textinput" name="Descricao" type="text"
								placeholder="Descri��o" class="form-control">
								<span class="label label-danger">${errdescricao}</span>
				
						</div>
							
					</div>

					<!-- Text input-->
					<div class="control-group">
						<label class="control-label" for="LocalDescription">Local/Estabelecimento
							do Melhor Pre�o</label>
						<div class="controls">
							<input id="textinput" name="LocalDescription" type="text"
								placeholder="Local/Estabelecimento do Melhor Pre�o"
								class="form-control">
								<span class="label label-danger">${errlocal}</span>

						</div>
					</div>


					<!-- Select Basic -->
					<div class="control-group">
						<label class="control-label" for="DiasDuracaos">Dias de
							Duracao do Melhor Pre�o (Estimado)</label>
						<div class="controls">
							<select id="selectbasic" name="DiasDuracao" class="form-control">
								<option value="1">Um Dia</option>
								<option value="2">Dois Dias</option>
								</select>
						</div>
					</div>

					<!-- Select Basic -->
					<div class="control-group">
						<label class="control-label" for="DiasDuracaos">Categoria</label>
						<div class="controls">
							<select id="selectbasic" name="Imagem" class="form-control">
								<option value="1">Alimenta��o</option>
								<option value="2">Vestuario</option>
								<option value="3">Eletronicos</option>
							</select>
						</div>
					</div>


					<!-- Text input-->
					<div class="control-group">
						<label class="control-label" for="Preco">Pre�o</label>
						<div class="controls">
							<input id="textinput" name="Preco" type="text"
								placeholder="30,00" class="form-control">
								<span class="label label-danger">${errpreco}</span>
								

						</div>
					</div>

					<!-- Button (Double) -->
					<div class="control-group">
<!-- 						<label class="control-label" for="button1id">Double Button</label> -->
						<div class="controls">
							<button id="button1id" name="button1id" class="btn btn-success">Cadastrar
								Melhor Pre�o</button>
							<a id="button2id" href="unico" name="button2id" class="btn btn-danger">Cancelar</a>
						</div>
					</div>


					<input type="text" name="Latitude" hidden="true"
						value="${latitude}"> <input type="text" name="Longitude"
						hidden="true" value="${longitude}">

				</fieldset>
			</div>
		</form>
	</div>



	<c:import url="/resources/tiles/footer.jsp" />

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

</body>
</html>
