<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%
    
    	request.setCharacterEncoding("UTF-8"); // 반드시 해야한다 아님 한글깨짐;
    	
    	String[] vote = new String[6];
    	vote[0] = request.getParameter("jumin");
    	vote[1] = request.getParameter("name");
    	vote[2] = request.getParameter("no");
    	vote[3] = request.getParameter("time");
    	vote[4] = request.getParameter("area");
    	vote[5] = request.getParameter("check");
    	
    	
    	String[][] voteList = (String[][]) session.getAttribute("voteList");
    	int voteCount = (int)session.getAttribute("voteCount");
    	
    	voteList[voteCount] = vote;
    	voteCount += 1;
    	session.setAttribute("voteList", voteList);  	
    	session.setAttribute("voteCount", voteCount);  	
		
		response.sendRedirect("05_vote_list.jsp");
    %>
    
    
    