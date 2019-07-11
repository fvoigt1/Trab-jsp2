<%@page import="dao.JogadoresDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<%

	//Obter o idJog
	int idJog = Integer.parseInt(request.getParameter("idJog"));

	//Excluir
	JogadoresDao jd = new JogadoresDao();
	boolean valida = jd.excluir(idJog);
	
	if(valida == true){
    	response.sendRedirect("../admin.jsp");
    }

%>>