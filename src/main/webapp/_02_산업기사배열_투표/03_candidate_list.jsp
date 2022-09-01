<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	
	String[][] memberList = (String[][])session.getAttribute("memberList");
	String[][] partyList = (String[][]) session.getAttribute("partyList");
	int memberCount = (int)session.getAttribute("memberCount");
	int partyCount = (int)session.getAttribute("partyCount");
	
	String[][] viewList = new String[memberCount][7];
	
	
	for(int i = 0; i < memberCount; i++){
		viewList[i][0] = memberList[i][0];
		viewList[i][1] = memberList[i][1];
		viewList[i][2] = "";
		if(memberList[i][3].equals("1")){
			viewList[i][3] = "고졸";
		}
		if(memberList[i][3].equals("2")){
			viewList[i][3]  = "학사";
		}
		if(memberList[i][3].equals("3")){
			viewList[i][3]  = "석사";
		}
		if(memberList[i][3].equals("4")){
			viewList[i][3]  = "박사";
		}		
		String jumin =  memberList[i][4];
		viewList[i][4] = jumin.substring(0,6) + "-" + jumin.substring(7);
		viewList[i][5] = memberList[i][5];
		viewList[i][6] = "";
		
	}
	
	
	for(int i = 0; i < memberCount; i++){
		for(int j = 0; j < partyCount; j++){
						
			if(memberList[i][2].equals(partyList[j][0])){
				viewList[i][2] = partyList[i][1];
				viewList[i][6] = partyList[i][4] + "-" + partyList[i][5] + "-" + partyList[i][6];
			}
		}
	}
	
	
%>
	<jsp:include page="01_header.jsp"></jsp:include>	
	<jsp:include page="01_nav.jsp"></jsp:include>
	
	<div align="center">
		<h2>후보 조회</h2>
		<table border="1">		
			<tr align="center">
				<td>후보번호</td>
				<td>성명</td>
				<td>소속정당</td>
				<td>학력</td>
				<td>주민번호</td>
				<td>지역구</td>
				<td>대표전화</td>
			</tr>

			<%for(int i = 0; i < viewList.length; i++) {%>
				<%String[] view = viewList[i]; %>				
				<tr align="center">
					<td ><%=view[0] %></td>
					<td><%=view[1] %></td>
					<td><%=view[2] %></td>
					<td><%=view[3] %></td>
					<td><%=view[4] %></td>
					<td><%=view[5] %></td>
					<td><%=view[6] %></td>
				</tr>
			<%} %>
						
		</table>
	</div>
	
	<jsp:include page="01_footer.jsp"></jsp:include>	
