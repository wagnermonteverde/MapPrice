<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<!-- <link href="http://fonts.googleapis.com/css?family=Open+Sans:600" -->
<!-- 	type="text/css" rel="stylesheet" /> -->

<script type="text/javascript"
	src="<c:url value='/resources/js/jquery.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/boot.min.js'/>"></script>





<title>Promoções</title>

<!-- Bootstrap core CSS -->
<link href="<c:url value='/resources/css/bootstrap.css'/>"
	rel="stylesheet">

<style type="text/css">
#imgpos {
	position: absolute;
	right: 400px;
	left: 400px; /* posiciona a 90px para a esquerda */
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
 <span	class="label label-info">Lista de promoções para :</span>
		<span class="label label-success">Descrição</span>

	<div id="imgpos">
	
	

		<hr>

		<c:forEach items="${lista}" var="promocao">


			<div class="row">
				<div class="span2">
					<a href="#" class="thumbnail"> <img
						src="${promocao.imgDescricao}" alt="Eita isso é constrangedor :()">
					</a>
				</div>
				<div class="span6">
					<h3>
						<span class="label label-success">Descrição</span> <span
							class="label label-info"> ${promocao.descricao}</span>
					</h3>

					<p>
						<span class="label label-primary">Local</span> <span
							class="label label-info"> ${promocao.localDescription} </span> |

						<span class="label label-primary">Cidade</span> <span
							class="label label-info">${promocao.cidade}</span> | <span
							class="label label-primary"> Duração</span> <span
							class="label label-info">${promocao.diasDuracao} dias </span>
					</p>

					<h3>
						<span class="label label-warning">Preço</span> <span
							class="label label-danger">R$ ${promocao.preco}</span>
					</h3>
					<p>
						<!-- 							<a href="#">Read more</a> -->
					</p>
				</div>
			</div>
			<div class="row">
				<div class="span8">
					<p>
						<span class="label label-info">2 dias </span>| <span
							class="label label-info">2 dias </span>| <span
							class="label label-info">2 dias </span>| <span
							class="label label-info">2 dias </span>
					</p>
					<p>
						<i class="icon-user"></i> by <a href="#">Wagner Ap Monteverde</a>
						| <i class="icon-calendar">Cadastrado em:</i> </i>
						<fmt:formatDate value="${promocao.dataCadstro.time}"
							pattern="dd/MM/yyyy" />
						| <i class="icon-tags"></i> Categoria : <a href="#"><span
							class="label label-info">${promocao.categoria}</span></a>
				</div>
			</div>


			<hr>




		</c:forEach>



		<br> <br> <br>
	</div>



	<hr>

	<c:import url="/resources/tiles/footer.jsp" />


</body>
</html>
