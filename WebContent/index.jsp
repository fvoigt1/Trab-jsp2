<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TRABALHO JSP</title>

<!--  Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/estilos2.css">

<!-- Script -->
<script>


</script>
   
</head>

<body>
	
	<%@ include file="mensagem.jsp" %>

	<!-- Image and text -->
<nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="#">
    <img src="https://img.icons8.com/ios/420/fortnite-filled.png" width="30" height="30" class="d-inline-block align-top" alt="">
    Fut.com
  </a>
</nav>

	<!-- CADASTRO -->
 	 <form class="registro" action="requisicoes/cadastrarUsu.jsp" method="post">
 	 <h4>Cadastre-se</h4>
 	 <div class="input-group mb-3">
 	   <div class="input-group-prepend">
 	
 	  </div>
    <input type="text" name="nomeUsuario" class="form-control" placeholder="Nome do usuário" aria-label="Nome do usuário" aria-describedby="basic-addon1">
		</div>

	<div class="input-group mb-3">
  <input type="text" name="emailUsuario" class="form-control" placeholder="Seu e-mail" aria-label="Seu e-mail" aria-describedby="basic-addon2">
 
  
  </div>
     
     <div class="input-group mb-3">
	 <input type="password" name="senhaUsuario" class="form-control" placeholder="Senha" aria-label="Senha" aria-describedby="basic-addon3">
	</div>  
	 
	 <div>
	 <input type="password" name="confSenha" class="form-control" placeholder="Confirmar a Senha" aria-label="Confirmar a Senha" aria-describedby="basic-addon4">
	</div>
  <div class="input-group-mb-3">
       <select id="Times" name="timeC">
       
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
        </div>
        <div>
             <input type="submit" value="Cadastrar">
            </div>
    
        
  	 </form>

	<!-- LOGIN -->
  	 <form class="login" action="requisicoes/logar.jsp" method="post">
  	 <h4>Login</h4>
  	   <div class="input-group mb-3">
  <div class="input-group-prepend">
   
  </div>
  <input type="text" name="nomeUsu" class="form-control" placeholder="Usuário" aria-label="Usuário" aria-describedby="basic-addon2">
</div>


<div>
	 <input type="password" name="senha" class="form-control" placeholder="Senha" aria-label="Senha" aria-describedby="basic-addon3">
</div>  
	 <div>
	   <input type="submit" value="Login">
	</div>
  	
  	 </form>
  	 
  	 <footer>
  	 <p> OS Mutchatchos 2019 | Todos os direitos reservados</p> 
  	 </footer>
  	 
</body>
</html>