<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="ISO-8859-1" />
<title>Melhor Preço Principal</title>
<link rel="stylesheet" type="text/css"
	href=" <c:url value='/resources/css/estilomapa.css'/>">
<!-- Bootstrap core CSS -->
<link href="<c:url value='/resources/css/bootstrap.css'/>"
	rel="stylesheet">
<!-- Add custom CSS here -->
<link
	href="<c:url value='/resources/font-awesome/css/font-awesome.min.css'/>"
	rel="stylesheet">
<link href="<c:url value='/resources/css/stylish-portfolio.css'/>"
	rel="stylesheet">
</head>

<body>
	   <!-- Fixed navbar -->
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/home">Melhor Preço</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Inicio</a></li>
            <li><a href="<c:url value='/mapa'/>">Cadastrar Preço</a></li>
            <li><a href="#contact">Contato</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Opções <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../navbar/">Default</a></li>
            <li><a href="../navbar-static-top/">Static top</a></li>
            <li class="active"><a href="./">Fixed top</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
    
    <br>
    <br>
    

	<div id="mapa" style="height: 88%; width: 100%"></div>

	<script src="<c:url value='/resources/js/jquery.min.js'/>"></script>
	<!-- Maps API Javascript -->
	<script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>


	<!-- Caixa de informação -->
	<script src="<c:url value='/resources/js/infobox.js'/>"></script>

	<!-- Agrupamento dos marcadores -->
	<script src="<c:url value='/resources/js/markerclusterer.js'/>"></script>

	<!-- Arquivo de inicialização do mapa -->
	<script src="<c:url value='/resources/js/mapa.js'/>"></script>
	
	
	
	
	
	<!-- Bootstrap core JavaScript -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<c:url value='/resources/js/jquery.js'/>"></script>
	<script src="<c:url value='/resources/js/bootstrap.js'/>"></script>
	
	

	
	 <div class="navbar navbar-inverse navbar-fixed-bottom ">
            <div class="navbar-inner">
                <div class="container">
                    <form class="navbar-form pull-right" action="PesquisaProdutos?pag=1" method="POST">
                        <input  name="busca" type="search" required="Preencha o campo busca" placeholder="Pesquise seu lanche!" class="span5" />
                        <input class="btn-info" type="submit" value="Buscar" >
                    </form>
                    <a class="brand" href="#">

                    </a>
                  </div>
            </div>
        </div>

</body>
</html>