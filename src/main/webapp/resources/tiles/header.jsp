<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
			<a class="navbar-brand" href="./">Melhor Preço</a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="timeline">Inicio</a></li>
				<li><a href="<c:url value='/mapa'/>">Cadastrar Preço</a></li>
				<li><a href="mapaoferta">Mapa de Promoções</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" id="sair"><img
						style="width: 24px; height: 24px;" alt="0"
						src="http://graph.facebook.com/<c:out value="${user.idFacebook}"/>/picture" /></a></li>

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">${user.name} ${user.sobrenome}<b
						class="caret"></b></a>
					<ul class="dropdown-menu">
						<li></li>
						</br>
						</br>
						</br>
<!-- 						                <li><a href="#"></a></li> -->
<!-- 						                <li><a href="#"></a></li> -->
						                <li class="divider"></li>
						                <li class="dropdown-header"></li>
<!-- 						                <li><a href="#"></a></li> -->
<!-- 						                <li><a href="#"></a></li> -->
						<li><a href="logof">Sair</a></li>
					</ul></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</div>