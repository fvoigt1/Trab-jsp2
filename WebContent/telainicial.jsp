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
	<link rel="styLesheet" href="css/estilos3.css">

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

<div class="card bg-dark text-white">

  
  <img src="imagens/copa_america_final.jpg" class="card-img" alt="...">
  <div class="card-img-overlay">
  <h5 class="card-title">Notícias!</h5> 
  <a href="https://globoesporte.globo.com/blogs/completando-a-jogada/post/2019/07/08/sem-brilho-a-selecao-brasileira-e-campea-da-copa-america.ghtml"> 
    <p  id="inicio" class="card-text">Brasil vence o Peru e conquista a Copa América!</p>
    </a>
    <h5 id="txt" class="card-title"></h5>
  </div>
</div>

<div id="CardNot1" class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
    <a href="https://globoesporte.globo.com/futebol/selecao-brasileira/noticia/marquinhos-nega-que-tenha-ignorado-jair-bolsonaro-na-premiacao-nao-teve-problema-nenhum.ghtml">
      <img src="imagens/Bolsonaro_Marquinhos.jpg" class="card-img" alt="...">
      </a>
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Marquinhos nega que tenha ignorado Jair Bolsonaro na premiação: "Não teve problema nenhum"</h5>
        <p class="card-text">O presidente acaba se pronunciando a respeito do ocorrido.</p>
        <p class="card-text"><small class="text-muted">Última atualização há 3 minutos</small></p>
      </div>
    </div>
  </div>
</div>

<div id="CardNot2" class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
    <a href="https://pt.wikipedia.org/wiki/Keanu_Reeves">
      <img src="imagens/Cássio.jpg" class="card-img" alt="..."> 
      </a>
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Keanu Reeves Brasileiro!?</h5>
        <p class="card-text">Internet acredita que o goleiro Cássio do Corinthians seja o Keanu Reeves Brazuca.</p>
        <p class="card-text"><small class="text-muted">Última atualização há 45 minutos</small></p>
      </div>
    </div>
  </div>
</div>

<div id="CardNot3" class="card-deck">
  <div class="card">
  <a href="https://globoesporte.globo.com/futebol/times/fluminense/noticia/apos-insucesso-com-walter-fluminense-encaminha-contratacao-de-goleiro-muriel.ghtml">
    <img src="imagens/Muriel_Flu.jpg" class="card-img-top" alt="...">
    </a>
    <div class="card-body">
      <h5 class="card-title">Nova contratação</h5>
      <p class="card-text">Fluminense contrata Muriel Becker, irmão do goleiro da seleção Alisson Becker.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Última atualização há 28 minutos</small>
    </div>
  </div>
  
  <div id="CardNot4" class="card">
  <a href="https://globoesporte.globo.com/futebol/futebol-internacional/futebol-espanhol/noticia/reapresentacao-do-real-madrid-tem-vinicius-junior-e-rodrygo-em-busca-de-espaco-e-insultos-a-bale.ghtml"> 
  <img src="imagens/Vini_Rodrygo.jpg" class="card-img-top" alt="...">
  </a>
    <div class="card-body">
      <h5 class="card-title">Reapresentação do Real Madrid tem Vinicius Junior e Rodrygo em busca de espaço e insulto a Bale</h5>
      <p class="card-text">Jovens brasileiros começam a tentar convencer Zidane que merecem vaga em setor ofensivo reforçado por Hazard e Jovic, com atacante galês em baixa com a torcida.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Última atualização há 21 horas</small>
    </div>
  </div>
  
  <div id="CardNot5" class="card">
  <a href="https://globoesporte.globo.com/blogs/bastidores-fc/post/2019/07/08/justica-suspende-multa-de-r-10-milhoes-por-transferencia-de-fred-do-cruzeiro-para-o-atletico-mg.ghtml"> 
   <img src="imagens/Fred_Cru.jpg" class="card-img-top" alt="...">
  </a>
    <div class="card-body">
      <h5 class="card-title">Justiça suspende multa de R$ 10 milhões por transferência de Fred do Atlético-MG para o Cruzeiro</h5>
      <p class="card-text">Advogados do atacante contestaram a competência legal da Câmara Nacional de Resolução de Disputas da CBF e processo arbitral foi suspenso em liminar. Cabe recurso.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Última atualização há 4 dias</small>
    </div>
  </div>
</div>

<footer id="footer">

<p>DGV Produções | Todos os direitos reservados</p>
	
</footer>
</body>
</html>