<%@page import="dao.JogadoresDao"%>
<%@page import="beans.JogadoresBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    
    //Obter dados
    int idJog = Integer.parseInt(request.getParameter("id"));
    String nomeJog = request.getParameter("nome");
    double altJog = Double.parseDouble(request.getParameter("altura"));
    String posiJog = request.getParameter("posicao");
    String timeAtu = request.getParameter("timeatual");
    int golsJog = Integer.parseInt(request.getParameter("gols"));
    int idadeJog = Integer.parseInt(request.getParameter("idade"));
    int numJog = Integer.parseInt(request.getParameter("numerocamisa"));
    double pesoJog = Double.parseDouble(request.getParameter("peso"));
    
    //Criar um objeto
    JogadoresBean jb = new JogadoresBean();
    jb.setIdJog(idJog);
    jb.setGolsJog(golsJog);
    jb.setAltJog(altJog);
    jb.setIdadeJog(idadeJog);
    jb.setNomeJog(nomeJog);
    jb.setNumJog(numJog);
    jb.setPesoJog(pesoJog);
    jb.setPosiJog(posiJog);
    jb.setTimeAtu(timeAtu);
    
    //Executa a altereção
    JogadoresDao jd = new JogadoresDao();
    boolean valida = jd.alterar(jb);
    
    if(valida == true){
    	response.sendRedirect("../admin.jsp");
    }
    
    %>