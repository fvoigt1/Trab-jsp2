<%@page import="beans.UsuarioBean"%>
<%@page import="dao.UsuarioDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    
    //Obter e-mail e senha
    String nomeUsu = request.getParameter("nomeUsu");
    String senha = request.getParameter("senha");
    
    
    //Validar e-mail e senha
    UsuarioDao ud = new UsuarioDao();
    int contador = ud.validarLogin(nomeUsu, senha);
    
    if(contador == 0){
    	response.sendRedirect("../index.jsp?mensagem=login");
    }else {
    		UsuarioBean ub = ud.obterDados(nomeUsu, senha);
    		session.setAttribute("usuario", ub);
    	
    	response.sendRedirect("../telainicial.jsp");
    	
    }
    
    %>