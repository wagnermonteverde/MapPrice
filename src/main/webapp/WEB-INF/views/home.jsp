<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link id="page_favicon"
	href="<c:url value='/resources/img/favicon.ico'/>" rel="icon"
	type="image/x-icon" />

<style type="text/css">
.fundo {
	color: #00008B;
}
</style>


<title>Melhor Preço :)</title>

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


	<div id="fb-root"></div>
	<script src="http://connect.facebook.net/en_US/all.js"></script>
	<script>
		FB.init({
			appId : '298568550277158', //ID da aplicação web definido no Facebook
			cookie : true, // permitir cookies para poder acessar a sessão
			status : true, // verificar o status do login
			xfbml : false, // usar ou não tags do Facebook
			oauth : true
		// autenticação via OAuth 2.0
		});

		function loginWithFacebook() {
			FB
					.login(
							function(response) {
								if (response.authResponse) {
									// window.location.href = "http://localhost:8080/price/login?token="+response.authResponse.accessToken;
									self.location = "http://localhost:8080/price/login?token="
											+ response.authResponse.accessToken;
								} else {
									console
											.log('User cancelled login or did not fully authorize.');
								}
							}, {
								scope : 'email'
							});
		}
	</script>


	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/pt_BR/all.js#xfbml=1&appId=298568550277158";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>




	<!-- Side Menu -->
	<a id="menu-toggle" href="#" class="btn btn-primary btn-lg toggle"><i
		class="icon-reorder"></i></a>
	<div id="sidebar-wrapper">
		<ul class="sidebar-nav">
			<a id="menu-close" href="#"
				class="btn btn-default btn-lg pull-right toggle"><i
				class="icon-remove"></i></a>
			<li class="sidebar-brand"><a href="#">Melhor Preço</a></li>
			<li><a href="#top">Inicio</a></li>
			<li><a href="#portfolio">item1</a></li>
			<li><a href="#services">item2</a></li>
			<li><a href="#">SObre nód</a></li>
			<li><a href="#">Contato</a></li>
		</ul>
	</div>
	<!-- /Side Menu -->

	<!-- Full Page Image Header Area -->
	<div id="top" class="header"
		style=" background: url(<c:url value='/resources/img/bg.jpg'/>) no-repeat center center fixed;
		display: table;
  height: 100%;
  width: 100%;
  position: relative;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;">
		<div class="vert-text">
			<h1 class="fundo">
				<img src="<c:url value='/resources/img/mp.png'/>"></img>
			</h1>

			<h3 class="fundo">
				<em>Encontre</em> o menor preço, <em>perto</em> de você!
			</h3>
			<a href="#intro" class="btn btn-warning btn-lg">Comece agora !</a>
			<p>
			<div class="fb-like"
				data-href="https://www.facebook.com/NetLancheDelivery"
				data-layout="button_count" data-action="like"
				data-show-faces="false" data-share="true"></div>
			</p>
		</div>
	</div>
	<!-- /Full Page Image Header Area -->

	<!-- Intro -->
	<div id="intro" class="intro">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center">
					<h2>Encontrou uma promoção ! Cadastre ela aqui :)</h2>
					<p class="lead">É uma forma de compratilhar um bom preço e
						deixa-lo disponível para que as outras pessoas também a vejam</p>
				</div>
			</div>
		</div>
	</div>
	<!-- /Intro -->

	<!-- Services -->
	<div id="services" class="services">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4 text-center">
					<a href="javascript:loginWithFacebook();"><img
						alt="Login com Facebook"
						src="<c:url value='/resources/img/login_facebook.png'/>"></a>

					<hr>

				</div>
			</div>
			<div class="fb-like-box"
				data-href="https://www.facebook.com/NetLancheDelivery"
				data-width="1100" data-height="200" data-colorscheme="light"
				data-show-faces="true" data-header="true" data-stream="false"
				data-show-border="false"></div>
		</div>
		<!-- 			<div class="row"> -->
		<!-- 				<div class="col-md-2 col-md-offset-2 text-center"> -->
		<!-- 					<div class="service-item"></div> -->
		<!-- 				</div> -->
		<!-- 				<div class="col-md-2 text-center"> -->
		<!-- 					<div class="service-item"> -->
		<%-- 						<a href="<c:url value='/mapa'/>"><i --%>
		<!-- 							class="service-icon icon-facebook-sign"></i></a> -->
		<!-- 						<h4> -->
		<!-- 							Login com </br> Facebook -->
		<!-- 						</h4> -->

		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 				<div class="col-md-2 text-center"> -->
		<!-- 					<div class="service-item"> -->
		<%-- 						<a href="<c:url value='/mapaoferta'/>"> <i --%>
		<!-- 							class="service-icon icon-twitter-sign"></i></a> -->
		<!-- 						<h4> -->
		<!-- 							Login com </br>Twitter -->
		<!-- 						</h4> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 				<div class="col-md-2 text-center"> -->
		<!-- 					<div class="service-item"></div> -->
		<!-- 				</div> -->
		<!-- 			</div> -->
	</div>
	</div>
	<!-- /Services -->

	<!-- Callout -->
	<div class="callout"
		style="background: url(<c:url value="/resources/img/section-two.jpg" />) no-repeat center center fixed;
	color: #ffffff;
  display: table;
  height: 400px;
  width: 100%;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;">




		<div class="vert-text">

			<!-- 			<!--bs-example -->
			-->

			<!-- 			<div class="bs-example"> -->
			<!-- 				<div class="row"> -->
			<!-- 					<div class="col-sm-6 col-md-3"> -->
			<!-- 						<a href="#" class="thumbnail"> <img -->
			<%-- 							src="<c:url value="/resources/img/tumb.png" />" --%>
			<!-- 							alt="Generic placeholder thumbnail"> -->
			<!-- 						</a> -->
			<!-- 					</div> -->
			<!-- 					<div class="col-sm-5 col-md-3"> -->
			<!-- 						<a href="#" class="thumbnail"> <img -->
			<%-- 							src="<c:url value="/resources/img/tumb.png" />" --%>
			<!-- 							alt="Generic placeholder thumbnail"> -->
			<!-- 						</a> -->
			<!-- 					</div> -->
			<!-- 					<div class="col-sm-5 col-md-3"> -->
			<!-- 						<a href="#" class="thumbnail"> <img -->
			<%-- 							src="<c:url value="/resources/img/tumb.png" />" --%>
			<!-- 							alt="Generic placeholder thumbnail"> -->
			<!-- 						</a> -->
			<!-- 					</div> -->
			<!-- 					<div class="col-sm-5 col-md-3"> -->
			<!-- 						<a href="#" class="thumbnail"> <img -->
			<%-- 							src="<c:url value="/resources/img/tumb.png" />" --%>
			<!-- 							alt="Generic placeholder thumbnail"> -->
			<!-- 						</a> -->
			<!-- 					</div> -->
			<!-- 				</div> -->
			<!-- 			</div> -->
			<!-- 			<!-- /.bs-example -->
			-->




		</div>
	</div>
	<!-- /Callout -->

	<!-- 	<!-- Portfolio -->
	-->
	<!-- 	<div id="portfolio" class="portfolio"> -->
	<!-- 		<div class="container"> -->
	<!-- 			<div class="row"> -->
	<!-- 				<div class="col-md-4 col-md-offset-4 text-center"> -->
	<!-- 					<h2>Parceiros :)</h2> -->
	<!-- 					<hr> -->
	<!-- 				</div> -->
	<!-- 			</div> -->

	<!-- 		</div> -->
	<!-- 	</div> -->
	<!-- 	</div> -->
	<!-- 	<!-- /Portfolio -->

	<!-- 	<!-- Call to Action -->
	<!-- 	<div class="call-to-action"> -->
	<!-- 		<div class="container"> -->
	<!-- 			<div class="row"> -->
	<!-- 				<div class="col-md-6 col-md-offset-3 text-center"> -->
	<!-- 					<h3>Botões da Sorte se alguma empresa Patrocinou algo -->
	<!-- 						interessante quem sabe pode ser hoje seu dia de sorte :) Recurso -->
	<!-- 						disponível somente se uma empresa patrocinou algum produto -->
	<!-- 						promoção etc.</h3> -->
	<!-- 					<a href="#top" class="btn btn-lg btn-default">Boa Sorte! (1)</a> <a -->
	<!-- 						href="#top" class="btn btn-lg btn-primary">Boa Sorte! (2)</a> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->


	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center">
					<ul class="list-inline">
						<li><i class="icon-facebook icon-2x"></i></li>
						<li><i class="icon-twitter icon-2x"></i></li>
						<li><i class="icon-dribbble icon-2x"></i></li>
					</ul>
					<hr>
					<p>Copyright &copy; Wagner Monteverde idea 2013</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- /Footer -->

	<!-- Bootstrap core JavaScript -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<c:url value='/resources/js/jquery.js'/>"></script>
	<script src="<c:url value='/resources/js/bootstrap.js'/>"></script>

	<!-- Custom JavaScript for the Side Menu - Put in a custom JS file if you want to clean this up -->
	<script>
		$("#menu-close").click(function(e) {
			e.preventDefault();
			$("#sidebar-wrapper").toggleClass("active");
		});
	</script>
	<script>
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#sidebar-wrapper").toggleClass("active");
		});
	</script>
	<script>
		$(function() {
			$('a[href*=#]:not([href=#])')
					.click(
							function() {
								if (location.pathname.replace(/^\//, '') == this.pathname
										.replace(/^\//, '')
										|| location.hostname == this.hostname) {

									var target = $(this.hash);
									target = target.length ? target
											: $('[name=' + this.hash.slice(1)
													+ ']');
									if (target.length) {
										$('html,body').animate({
											scrollTop : target.offset().top
										}, 400);
										return false;
									}
								}
							});
		});
	</script>

</body>

</html>