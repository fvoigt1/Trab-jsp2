<link rel="styLesheet" href="css/estilos.css">
<%

String mensagem = request.getParameter("mensagem");

try{
	
	switch(mensagem) {
	case "login":
		out.print("<div id='mensagem'>Usuário ou senha incorretos</div>");
	break;
	}
	
}catch (Exception erro) {
	
}

%>