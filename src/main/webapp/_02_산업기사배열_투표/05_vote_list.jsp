<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String[][] voteList = (String[][]) session.getAttribute("voteList");
	int voteCount = (int)session.getAttribute("voteCount");
	
	int viewCount = 0;
	for(int i = 0; i < voteCount; i++){		
		if(voteList[i][4].equals("제1투표장")){
			viewCount += 1;		
		}
	}
	
	String[][] viewList = new String[viewCount][7];	
	
	viewCount = 0;
	for(int i = 0; i < voteCount; i++){		
		if(voteList[i][4].equals("제1투표장")){
			
			// 번호
			viewList[viewCount][0] = voteList[i][1];
			
			// 주민번호
			String jumin = voteList[i][0];		
			viewList[viewCount][1] = "19" + jumin.substring(0,2) + "년"  + jumin.substring(2,4) + "월" + jumin.substring(4,6) + "일생";	
			int year = 1900 + Integer.parseInt(jumin.substring(0,2));
			int age = 2022 - year;
			viewList[viewCount][2] = "만" + age + "세";
			if(jumin.charAt(6) == '1'){
				viewList[viewCount][3] = "남";
			}else{
				viewList[viewCount][3] = "여";
			}	
			
			// 후보번호
			viewList[viewCount][4] = voteList[i][2];
			
			// 투표시간
			viewList[viewCount][5] = voteList[i][3];
			
			// 확인유무
			if(voteList[i][5].equals("Y")|| voteList[i][5].equals("y")){
				viewList[viewCount][6] = "확인";
			}else{
				viewList[viewCount][6] = "미확인";
			} 
			
			viewCount += 1;
		}
	}
%>

	<jsp:include page="01_header.jsp"></jsp:include>	
	<jsp:include page="01_nav.jsp"></jsp:include>
	
	<div align="center">
		<h2>투표검수조회</h2>
		<table border="1">		
			<tr align="center">
				<td>성명</td>
				<td>생년월일</td>
				<td>나이</td>
				<td>성별</td>
				<td>후보번호</td>
				<td>투표시간</td>
				<td>유권자확인</td>
			</tr>

			<%for(int i = 0; i < viewCount; i++) {%>
				<tr align="center">
					<td><%=viewList[i][0] %></td>
					<td><%=viewList[i][1] %></td>
					<td><%=viewList[i][2] %></td>
					<td><%=viewList[i][3] %></td>
					<td><%=viewList[i][4] %></td>
					<td><%=viewList[i][5] %></td>
					<td><%=viewList[i][6] %></td>
					
				</tr>
			<%} %>
						
		</table>
	</div>
	
	<jsp:include page="01_footer.jsp"></jsp:include>	
