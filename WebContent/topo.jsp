<%@page import="com.sun.org.apache.xpath.internal.functions.Function"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

	<!-- CSS -->
	<link rel="styLesheet" href="css/estilos.css">

<%

	

%>



</head>
<body class="fundoinicial">

<script>

function elenco() {
	  var x = document.getElementByClassName("geral");
	  if (x.style.display === "none") {
	    x.style.display = "block";
	  } else {
	    x.style.display = "none";
	  }
	}

</script>

<header>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Fut.com</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="telainicial.jsp">Início <span class="sr-only">(current)</span></a>
      </li>
	<li class="nav-item active">
        <a class="nav-link" href="requisicoes/sair.jsp">Sair <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Times
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
         <a href="corinthians.jsp">
          <img src="escudos/Coringa.png" title="Corinthians">
          </a>
          <a href="saopaulo.jsp">
          <img src="escudos/Bambi.png" title="São Paulo">
          </a>
          <a href="gremio.jsp">
          <img src="escudos/Gremio.png" title="Grêmio">
          </a>
          <a href="flamengo.jsp">
          <img src="escudos/Cheiro.png" title="Flamengo">
          </a>
          <a href="palmeiras.jsp">
          <img src="escudos/Palmares.png" title="Palmeiras">
          </a>
          <a href="santos.jsp">
          <img src="escudos/Prantos.png" title="Santos">
          </a>
          <a href="botafogo.jsp">
          <img src="escudos/Faísca.png" title="Botafogo">
          </a>
          <a href="vasco.jsp">
          <img src="escudos/Basco.png" title="Vasco">
          </a>
          <a href="inter.jsp">
          <img src="escudos/Binter.png" title="Internacional">
          </a>
          <a href="fluminense.jsp">
          <img src="escudos/Fluzão.png" title="Fluminense">
          </a>
          <a href="cruzeiro.jsp">
          <img src="escudos/Zeiro.png" title="Cruzeiro">
          </a>
          <a href="atleticomg.jsp">
          <img src="escudos/Atl-Mg.png" title="Atlético-MG">
          </a>
        </div>
      </li>
    </ul>
  
  </div>
</nav>

</header>