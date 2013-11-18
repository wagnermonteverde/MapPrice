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



	<br>
	<br>
	<br>
	<div id="imgpos">
		
		<hr>

				<div class="row">
					<div class="span2">
						<a href="#" class="thumbnail"> <img
							src="http://placehold.it/260x180" alt="">
						</a>
					</div>
					<div class="span6">
						<p>Lorem ipsum dolor sit amet, id nec conceptam
							conclusionemque. Et eam tation option. Utinam salutatus ex eum.
							Ne mea dicit tibique facilisi, ea mei omittam explicari
							conclusionemque, ad nobis propriae quaerendum sea.</p>
						<p>
							<a href="#">Read more</a>
						</p>
					</div>
				</div>
				<div class="row">
					<div class="span8">
						<p></p>
						<p>
							<i class="icon-user"></i> by <a href="#">Mark</a> | <i
								class="icon-calendar"></i> Sept 16th, 2012 | <i
								class="icon-comment"></i> <a href="#">3 Comments</a> | <i
								class="icon-share"></i> <a href="#">39 Shares</a> | <i
								class="icon-tags"></i> Tags : <a href="#"><span
								class="label label-info">Snipp</span></a> <a href="#"><span
								class="label label-info">Bootstrap</span></a> <a href="#"><span
								class="label label-info">UI</span></a> <a href="#"><span
								class="label label-info">growth</span></a>
						</p>
					</div>
				</div>
			</div>
		
		<hr>





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
