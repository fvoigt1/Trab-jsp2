<%@page import="beans.JogadoresBean"%>
<%@page import="dao.JogadoresDao"%>
<%@ include file="topo.jsp" %>


<%
	//Variável idJog
	int idJog = 0;
	
	//Tentar obter idJog
	try{
		idJog = Integer.parseInt(request.getParameter("idJog"));
	}catch (Exception erro){}
	
	//Obter os dados
		JogadoresDao jd = new JogadoresDao();
		JogadoresBean jb = jd.obterDados(idJog);
	

	%>
	<div class="topofla">
	
	 <div class="image"></div>
	 
	 <h1>Flamengo</h1>
	 <h6>Rio de Janeiro(RJ)</h6>
	 <h6>Fundado em 1895</h6>
	 <h4>Site oficial: <a href="https://www.flamengo.com.br/">www.flamengo.com.br</a></h4>
	 <h5>Dirigentes</h5>
	 <p>Presidente: Luiz Rodolfo Landim Machado </p>
	 <p>Vice - Presidente: Rodrigo Villaça Dunshee de Abranches</p>
	 <button id="elenco" type="button" class="btn btn-danger">Elenco</button>
	 <button id="escalacao" type="button" class="btn btn-success">Escalação</button>
	
	 </div>
	
	<div class="geral">

	<div class="image">
	
	<%
	out.print(jd.selecionarFla());
	%>
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
    <td>10/07 - 21:30</td>
    <td>Athletico Pr</td>
    <td>Fora</td>
    <td>Copa do Brasil</td>
  </tr>
  <tr class="verdeescuro">
    <td>14/07 - 11:00</td>
    <td>Goiás</td>
    <td>Casa</td>
    <td>Campenato Brasileiro</td>
  </tr>
  <tr class="verdeclaro">
    <td>17/07 - 21:30</td>
    <td>Athletico Pr</td>
    <td>Casa</td>
    <td>Campenato Brasileiro</td>
  </tr>
</table>
</div>
	
	<div class="estatisticas">
	<h1>Estatísticas</h1>
	
	<h2>Jogador: <input class="nome" type="text"size="20"disabled="disabled"></h2>
	
	
	<div class="foto"></div>
	
	<h2>Posição: <input class="pos" type="text"size="20" disabled="disabled"></h2>
	
	<h2>Gols: <input class="padrao" type="text"size="20" disabled="disabled"></h2>
	
	<h2>Nº da camisa: <input class="padrao" type="text"size="20" disabled="disabled"></h2>
	
	<h2>Idade: <input class="padrao" type="text"size="20" disabled="disabled"></h2>
	
	<h2>Altura: <input class="padrao" type="text"size="20" disabled="disabled"></h2>
	
	<h2>Peso: <input class="padrao" type="text"size="20" disabled="disabled"></h2>
	
	</div>

	<div class="patro">
	
	<h2>Nome</h2>
	<h3>Clube de Regatas do Flamengo</h3>
	<h2>Marca Uniforme </h2>
	<h3>Adidas</h3>
	<h2>Patrocíonio</h2>
	<h3>Banco BS2</h3>
	<h2>Uniforme</h2>
	<img class="unifla" src="uniformes/flamengo.png" title="Adidas">
	<h2>Outras ligações</h2>
	<a href="https://www.facebook.com/FlamengoOficial/" target="_blank">
	<img src="logos/iconFace.png" title="Facebook">
	</a>
	<a href="https://twitter.com/flamengo" target="_blank">
	<img src="logos/iconTwit.png" title="Twitter">
	</a>
	<a href="https://www.instagram.com/flamengo/" target="_blank">
	<img src="logos/iconInsta.png" title="Instagram">
	</a>
	<a href="https://www.youtube.com/user/flamengo" target="_blank">
	<img src="logos/iconYout.png" title="Youtube">
	</a>
	<h2>Endereço</h2>
	<h3>Av. Borges de Medeiros 997 - Gávea</h3>
	<h2>E-Mail</h2>
	<h3>flapresidencia@flamengo.com.br</h3>
	
	</div>
	<div class="comissao">
	
	<h2>Treinador</h2>
	<h3>Jorge Jesus</h3>
	<h2>Auxiliares</h2>
	<h3>Tiago Oliveira</h3>
	<h3>Marcelo Salles</h3>
	<h3>João de Deus</h3>
	
	</div>
	
</body>
</html>