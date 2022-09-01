<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <jsp:include page="00_top.jsp" ></jsp:include>
 
 
 <div align="center"> 	
	 	<h2>회원매출조회</h2>
	 	
	 	<table border="1">		
	 		<tr align="center">
	 		<%Object memberlist = session.getAttribute("memberList"); 
	    	Object salelist = session.getAttribute("salesList");
	    	Object salecount = session.getAttribute("salesCount");
	    	Object membercount = session.getAttribute("memberCount");
	    	String memberList[][]=(String[][])memberlist;
	    	String saleList[][]=(String[][])salelist;
	    	int saleCount=(int)salecount;
	    	int memberCount=(int)membercount;

	 		%>
	 			<td width="100px">회원번호</td>
	 			<td width="100px">회원성명</td>
	 			<td width="170px">고객등급</td>
	 			<td width="150px">매출</td>
	 		</tr>

	 		<%for(int i=0;i<memberCount;i++){ 
		    	int sum=0;
	 		for(int j=0;j<saleCount;j++){
	 			if(saleList[j][0]==memberList[i][0]){
	 				sum+=Integer.valueOf(saleList[j][4]);
	 			}
	 		}if(sum!=0){%>
	 		<tr>
	 			<td width="100px"><%=memberList[i][0]%></td>
	 			<td width="100px"><%=memberList[i][1] %></td>
	 			<td width="170px"><%=memberList[i][5]%></td>
	 			<td width="150px"><%=sum%></td>
	 		</tr>
	 		<%}}%>		 			
	 	</table>		 	
 	</div>
 