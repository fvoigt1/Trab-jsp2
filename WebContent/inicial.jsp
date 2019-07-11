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

<header>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Fut.com</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Início <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Times
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a href="teste.jsp">
          <img src="escudos/Coringa.png" title="Corinthians">
          </a>
          <img src="escudos/Bambi.png" title="São Paulo">
          <img src="escudos/Gremio.png" title="Grêmio">
          <img src="escudos/Cheiro.png" title="Flamengo">
          <img src="escudos/Palmares.png" title="Palmeiras">
          <img src="escudos/Prantos.png" title="Santos">
          <img src="escudos/Faísca.png" title="Botafogo">
          <img src="escudos/Basco.png" title="Vasco">
          <img src="escudos/Binter.png" title="Internacional">
          <img src="escudos/Fluzão.png" title="Fluminense">
          <img src="escudos/Zeiro.png" title="Cruzeiro">
          <img src="escudos/Atl-Mg.png" title="Atlético-MG">
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

</header>

	<div class="topoflu">
	
	 <div class="image"></div>
	 
	 <h1>Fluminense</h1>
	 <h6>Rio de Janeiro(RJ)</h6>
	 <h6>Fundado em 1902</h6>
	 <h4>Site oficial: <a href="http://www.fluminense.com.br/site/">www.fluminense.com.br</a></h4>
	 <h5>Dirigentes</h5>
	 <p>Presidente: Mário Machado Bittencourt</p>
	 <p>Vice - Presidente: Celso Barros</p>
	 
	
	 </div>
	
	<div class="geral">

	<div class="image">
	
	</div>
	
	<h3>Próximos Jogos</h3>
	
	<table class="jogos" bordercolor="black">
 	 <tr class="verdeescuro">
    <th>Data e Hora</th>
    <th>Adversário</th> 
    <th>Casa ou Fora</th>
    <th>Campeonato</th> 
  </tr>
  <tr class="verdeclaro">
    <td>15/07 - 20:00</td>
    <td>Ceará</td>
    <td>Casa</td>
    <td>Campenato Brasileiro</td>
  </tr>
  <tr class="verdeescuro">
    <td>20/07 - 11:00</td>
    <td>Vasco</td>
    <td>Fora</td>
    <td>Campenato Brasileiro</td>
  </tr>
  <tr class="verdeclaro">
    <td>23/07 - 21:00</td>
    <td>Peñarol</td>
    <td>Fora</td>
    <td>Copa Sul-Americana</td>
  </tr>
</table>
</div>
	
	<div class="estatisticas">
	<h1>Estatísticas</h1>
	
	<h2>Jogador:</h2>
	
	<div class="foto"></div>
	
	<h2>Gols:</h2>
	<h2>Jogos:</h2>
	<h2>Posição:</h2>
	<h2>Idade:</h2>
	<h2>Altura:</h2>
	<h2>Peso:</h2>
	</div>
	<div class="ganso"></div>
	<h2>Gols:</h2>
	<h2>Jogos:</h2>
	<h2>Posição:</h2>
	<h2>Idade:</h2>
	<h2>Altura:</h2>
	<h2>Peso:</h2>

	<div class="patro">
	
	<h2>Nome</h2>
	<h3>Fluminense Football Club</h3>
	<h2>Marca Uniforme </h2>
	<h3>Under Armour</h3>
	<h2>Patrocíonio</h2>
	<h3>Tim | Rappi</h3>
	<h2>Uniforme</h2>
	<img src="uniformes/fluminense.jpg" title="Under Armour">
	<h2>Outras ligações</h2>
	<a href="https://www.facebook.com/FluminenseFC" target="_blank">
	<img src="logos/iconFace.png" title="Facebook">
	</a>
	<a href="https://twitter.com/oficialflu">
	<img src="logos/iconInsta.png" title="Instagram" target="_blank">
	</a>
	<a href="https://www.instagram.com/fluminensefc/">
	<img src="logos/iconTwit.png" title="Twitter" target="_blank">
	</a>
	<a href="https://www.youtube.com/user/Fludigital">
	<img src="logos/iconYout.png" title="Youtube" target="_blank">
	</a>
	<h2>Endereço</h2>
	<h3>Rua Álvaro Chaves, 41, Laranjeiras, <br>Rio de Janeiro (RJ), CEP 22231-200</h3>
	<h2>E-Mail</h2>
	<h3>secretaria@fluminense.com.br</h3>
	
	</div>
	<div class="comissao">
	
	<h2>Treinador</h2>
	<h3>Fernando Diniz</h3>
	<h2>Auxiliares</h2>
	<h3>Márcio Araújo</h3>
	<h3>Edevaldo de Freitas</h3>
	<h3>Wagner Bertelli</h3>
	
	</div>
	
</body>
</html>