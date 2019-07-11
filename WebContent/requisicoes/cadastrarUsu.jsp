<%@page import="dao.UsuarioDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%  

try{
	
	//Obter dados
	String nomeUsu = request.getParameter("nomeUsuario");
	String emailUsu = request.getParameter("emailUsuario");
	String senhaUsu = request.getParameter("senhaUsuario");
	String confSenha = request.getParameter("confSenha");
	String timeC = request.getParameter("timeC");	
	//Executar cadastro
	UsuarioDao ud = new UsuarioDao();
	boolean valida = ud.cadastrar(nomeUsu, emailUsu, senhaUsu, timeC);
	
	 if(valida == true){
	    	response.sendRedirect("../index.jsp?mensagem=login");
	    }else{
	    	response.sendRedirect("../admin.jsp?mensagem=login");
	    }
}catch (Exception erro){
}

%>