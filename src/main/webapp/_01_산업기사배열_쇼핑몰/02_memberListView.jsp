<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <jsp:include page="00_top.jsp" ></jsp:include>
 	<%
 		Object memberCount = session.getAttribute("memberCount");
	 	  Object memberList= session.getAttribute("memberList"); 
	 	  int count = (int)memberCount;
	 	  String mList[][]=(String[][])memberList;
 	  %>
	<div align="center"> 	
	 	<h2>회원목록조회/수정</h2> 	
	 	<table border="1">		
	 		<tr align="center">
	 			<td width="100px">회원번호</td>
	 			<td width="100px">회원성명</td>
	 			<td width="150px">전화번호</td>
	 			<td width="200px">통신사</td>
	 			<td width="100px">가입일자</td>
	 			<td width="100px">고객등급</td>
	 			<td width="100px">거주지역</td>
	 		</tr>	
			<%for(int i=0;i<count;i++){ %>
			<tr>
				<td width="100px"><%=mList[i][0]%></td>
	 			<td width="100px"><a href="04_updateForm.jsp?number=<%=mList[i][0]%>"><%=mList[i][1]%></a></td>
	 			<td width="150px"><%=mList[i][2]%></td>
	 			<td width="200px"><%=mList[i][3]%></td>
	 			<td width="100px"><%=mList[i][4]%></td>
	 			<td width="100px"><%=mList[i][5]%></td>
	 			<td width="100px"><%=mList[i][6]%></td>
			</tr>
	 		<%} %>
	 	</table>	 	
 	</div>