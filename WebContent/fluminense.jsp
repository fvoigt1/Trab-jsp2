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


	<div class="topoflu">
	
	 <div class="image"></div>
	 
	 <h1>Fluminense</h1>
	 <h6>Rio de Janeiro(RJ)</h6>
	 <h6>Fundado em 1902</h6>
	 <h4>Site oficial: <a href="http://www.fluminense.com.br/site/">www.fluminense.com.br</a></h4>
	 <h5>Dirigentes</h5>
	 <p>Presidente: Mário Machado Bittencourt</p>
	 <p>Vice - Presidente: Celso Barros</p>
	 <button id="elenco" type="button" class="btn btn-danger" onclick="elenco()">Elenco</button>
	 <button id="Escalacao" type="button" class="btn btn-success">Escalação</button>
	
	 </div>
	
	<div class="geral">
	
	<div class="image"></div>
	<div class="goleiro"><img src="jogador/marcosFlu.png"></div>
	<div class="zagueiro1"><img src="jogador/matheusFlu.png"></div>
	<div class="zagueiro2"><img src="jogador/digaoFlu.png"></div>
	<div class="laterale"><img src="jogador/caioFlu.png"></div>
	<div class="laterald"><img src="jogador/gigiFlu.png"></div>
	<div class="volante"><img src="jogador/allanFlu.png"></div>
	<div class="meio1"><img src="jogador/gansoFlu.png"></div>
	<div class="meio2"><img src="jogador/danielFlu.png"></div>
	<div class="pontae"><img src="jogador/yonyFlu.png"></div>
	<div class="pontad"><img src="jogador/marcospFlu.png"></div>
	<div class="atacante"><img src="jogador/pedroFlu.png"></div>
	
	<%
	out.print(jd.selecionarFlu());
	%>
	
</div>
	
	<div class="estatisticas">
	<h1>Estatísticas</h1>
	<input type="hidden" name="id" value="<% out.print(idJog); %>">
	<h2>Jogador: <input class="nome" type="text"size="18"disabled="disabled" value="<% out.print(jb.getNomeJog()); %>"></h2>
	
	
	<div class="foto"></div>
	
	<h2>Posição: <input class="pos" type="text"size="20" disabled="disabled" value="<% out.print(jb.getPosiJog()); %>"></h2>
	
	<h2>Gols: <input class="padrao" type="text"size="20" disabled="disabled" value="<% out.print(jb.getGolsJog()); %>"></h2>
	
	<h2>Nº da camisa: <input class="padrao" type="text"size="20" disabled="disabled" value="<% out.print(jb.getNumJog()); %>"></h2>
	
	<h2>Idade: <input class="padrao" type="text"size="20" disabled="disabled" value="<% out.print(jb.getIdadeJog()); %>"></h2>
	
	<h2>Altura: <input class="padrao" type="text"size="20" disabled="disabled" value="<% out.print(jb.getAltJog()); %>"></h2>
	
	<h2>Peso: <input class="padrao" type="text"size="20" disabled="disabled" value="<% out.print(jb.getPesoJog()); %>"></h2>
	
	</div>
	

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
	<a href="https://twitter.com/oficialflu" target="_blank">
	<img src="logos/iconTwit.png" title="Twitter">
	</a>
	<a href="https://www.instagram.com/fluminensefc/" target="_blank">
	<img src="logos/iconInsta.png" title="Instagram">
	</a>
	<a href="https://www.youtube.com/user/Fludigital" target="_blank">
	<img src="logos/iconYout.png" title="Youtube">
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