<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- CSS -->
	<link rel="styLesheet" href="css/estilos.css">
</head>
<body>

	<div class="topoadmin">
	<h1>Administrador</h1>
	</div>
	<%@page import="beans.JogadoresBean"%>
	<%@page import="dao.JogadoresDao"%>
	<%
	//Variável idJog
	int idJog = 0;
	
	//Tentar obter idJog
	try{
		idJog = Integer.parseInt(request.getParameter("idJog"));
	}catch (Exception erro){}
	
	if (idJog == 0){
	
	%>	
	<!-- Formulário -->
	<form class="formularioregistro" action="requisicoes/cadasJog.jsp" method="post">
		<input type="text" placeholder="Nome Jogador" name="nome">
		<input type="text" placeholder="Número da camisa" name="numerocamisa">
		<input type="text" placeholder="Gols" name="gols">
		<input type="text" placeholder="Posição" name="posicao">
		<input type="text" placeholder="Idade" name="idade">
		<input type="text" placeholder="Altura" name="altura">
		<input type="text" placeholder="Peso" name="peso">
		<input type="submit" value="Registrar">
		<input type="submit" value="Alterar">
		 <select id="Times2" name="timeatual">
       
        <option>Escolha o seu Time</option>
        <option>Fluminense</option>
        <option>Vasco</option>
        <option>Palmeiras</option>
        <option>Flamengo</option>
        <option>Santos</option>
        <option>Grêmio</option>
        <option>Atlético Mineiro</option>
        <option>Corinthians</option>
        <option>Botafogo</option>
        <option>Cruzeiro</option>
        <option>Internacional</option>
        <option>São Paulo</option>
        </select>
		
	</form>
	
	<% }else{
	
	//Obter os dados
	JogadoresDao jd = new JogadoresDao();
	JogadoresBean jb = jd.obterDados(idJog);
	
	%>
	
	<form class="formularioregistro" action="requisicoes/alterarJog.jsp" method="post">
		<input type="hidden" name="id" value="<% out.print(idJog); %>">
		<input type="text" placeholder="Nome Jogador" name="nome" value="<% out.print(jb.getNomeJog()); %>">
		<input type="text" placeholder="Número da camisa" name="numerocamisa" value="<% out.print(jb.getNumJog()); %>">
		<input type="text" placeholder="Gols" name="gols" value="<% out.print(jb.getGolsJog()); %>">
		<input type="text" placeholder="Posição" name="posicao" value="<% out.print(jb.getPosiJog()); %>">
		<input type="text" placeholder="Idade" name="idade" value="<% out.print(jb.getIdadeJog()); %>">
		<input type="text" placeholder="Altura" name="altura" value="<% out.print(jb.getAltJog()); %>">
		<input type="text" placeholder="Peso" name="peso" value="<% out.print(jb.getPesoJog()); %>">
		<input type="submit" value="Registrar">
		<input type="submit" value="Alterar">
		 <select id="Times2" name="timeatual">
       
        <option>Escolha o seu Time</option>
        <option>Fluminense</option>
        <option>Vasco</option>
        <option>Palmeiras</option>
        <option>Flamengo</option>
        <option>Santos</option>
        <option>Grêmio</option>
        <option>Atlético Mineiro</option>
        <option>Corinthians</option>
        <option>Botafogo</option>
        <option>Cruzeiro</option>
        <option>Internacional</option>
        <option>São Paulo</option>
        </select>
		
	</form>
	<% } %>
	<h2 class="jog">Lista de Jogadores</h2>
	
	<% 
	
	JogadoresDao jd = new JogadoresDao();
	out.print(jd.selecionar());
	
	%>
</body>
</html>