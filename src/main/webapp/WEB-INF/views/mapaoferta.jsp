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
	<c:import url="/resources/tiles/header.jsp" />

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




	<c:import url="/resources/tiles/footer.jsp" />

</body>
</html>