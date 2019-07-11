<%@page import="dao.JogadoresDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



    <%
    
    try{
    	String nomeJog = request.getParameter("nome");
    	String timeAtu = request.getParameter("timeatual");
    	String posiJog = request.getParameter("posicao");
    	int numJog = Integer.parseInt(request.getParameter("numerocamisa"));
    	int golsJog = Integer.parseInt(request.getParameter("gols"));
    	int idadeJog = Integer.parseInt(request.getParameter("idade"));
    	double pesoJog = Double.parseDouble(request.getParameter("peso"));
    	double altJog = Double.parseDouble(request.getParameter("altura"));
  	
    	JogadoresDao jd = new JogadoresDao();
    	boolean valida = jd.cadastrar(nomeJog, timeAtu, posiJog, numJog, golsJog, idadeJog, pesoJog, altJog);
    	
    	if(valida == true){
        	response.sendRedirect("../admin.jsp");
        }
    }catch(Exception erro){}
    
    %>