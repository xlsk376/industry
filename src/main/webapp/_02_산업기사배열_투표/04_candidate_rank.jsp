<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String[][] memberList = (String[][])session.getAttribute("memberList");
	String[][] voteList = (String[][]) session.getAttribute("voteList");
	int memberCount = (int)session.getAttribute("memberCount");
	int voteCount = (int)session.getAttribute("voteCount");
	
	
	String[][] viewList = new String[memberCount][3];	

	for(int i = 0; i < memberCount; i++){
		viewList[i][0] = memberList[i][0];
		viewList[i][1] = memberList[i][1];
		viewList[i][2] = "0";	
	}
	
	
	for(int i = 0; i < memberCount; i++){
		for(int j = 0; j < voteCount; j++){

			if(memberList[i][0].equals(voteList[j][2])){
				int num = Integer.parseInt(viewList[i][2]);
				num += 1;
				viewList[i][2] = num + "";
			}
		}
	}
	
	for(int i = 0; i < viewList.length; i++){
		for(int j = i + 1; j < viewList.length; j++){
			
			if(viewList[i][2].compareTo((viewList[j][2])) < 0){
				String[] temp = viewList[i];
				viewList[i] = viewList[j];
				viewList[j] = temp;
			}
		}
	} 
	
%>

	<jsp:include page="01_header.jsp"></jsp:include>	
	<jsp:include page="01_nav.jsp"></jsp:include>
	
	<div align="center">
		<h2>후보자 등수</h2>
		<table border="1">		
			<tr align="center">
				<td>후보번호</td>
				<td>성명</td>
				<td>총투표건수</td>
			</tr>

			<%for(int i = 0; i < viewList.length; i++) {%>
				<%String[] view = viewList[i]; %>				
				<tr align="center">
					<td ><%=view[0] %></td>
					<td><%=view[1] %></td>
					<td><%=view[2] %></td>
					
				</tr>
			<%} %>
						
		</table>
	</div>
	
	<jsp:include page="01_footer.jsp"></jsp:include>	
