
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="00_top.jsp" ></jsp:include>
	    
	<div align="center">
	 	  <% Object memberList= session.getAttribute("memberList");
	 	     Object memberCount = session.getAttribute("memberCount");
		     int count = (int)memberCount;
	 	     String mList[][] =(String[][])memberList;
	 	     int num = Integer.valueOf(request.getParameter("number"));
	 	     int member=0;
	 	      for(int i=0;i<count;i++){
	 	    	 if(Integer.valueOf(mList[i][0])==num){
	 	    		 member=i;
	 	    	 }
	 	     }
	 	  %> 
	 	  
		<h2>홈쇼핑 회원 등록</h2>
		<form action="04_updateFormPro.jsp">
			<table border="1">
				<tr >
					<td width="300px" align="center">회원번호</td>
					<td width="400px"><input type="hidden" name="num" value="<%=num %>"> <%=num %></td>
				</tr>
				<tr>
					<td align="center">회원성명</td>
					<td><%=mList[member][1] %> </td>
				</tr>
				<tr>
					<td align="center">회원전화</td>
					<%String mL[]=mList[member][2].split("-"); %>
					<td>
					<input type="text" name="phone1" value="<%=mL[0]%>" maxlength="3">-
					<input type="text" name="phone2" value="<%=mL[1]%>" maxlength="4">-
					<input type="text" name="phone3" value="<%=mL[2]%>" maxlength="4">
					</td>
				</tr>
				<tr>
					<td align="center">통신사(SK KT LG)</td>
					<td >			
						<%if(mList[member][3].equals("SK")){%>
						 <input type="radio" name="address" value="SK" checked>SK&nbsp;
						 <input type="radio" name="address" value="KT">KT&nbsp;
						 <input type="radio" name="address" value="LG">LG	
						 <%}else if(mList[member][3].equals("KT")){ %>
				         <input type="radio" name="address" value="SK" >SK&nbsp;
						 <input type="radio" name="address" value="KT" checked>KT&nbsp;
						 <input type="radio" name="address" value="LG">LG	
				         <%}else if(mList[member][3].equals("LG")){ %>
				         <input type="radio" name="address" value="SK" >SK&nbsp;
						 <input type="radio" name="address" value="KT">KT&nbsp;
						 <input type="radio" name="address" value="LG" checked>LG	
				         <%}%>		
					</td>
				</tr>
				<tr>
					<td align="center">가입일자</td>
					<td><%=mList[member][4] %></td>
				</tr>
				<tr>
					<td align="center">고객등급(A:VIP,B:일반,C:직원)</td>
					<td>
				    <select name="rank">
				    <%if(mList[member][5].equals("A")){%>
					<option value="A" selected>A</option>
					<option value="B" >B</option>
					<option value="C" >C</option>
					<%}else if(mList[member][5].equals("B")){%>
					<option value="A" >A</option>
					<option value="B" selected>B</option>
					<option value="C" >C</option>
					<%}else if(mList[member][5].equals("C")){ %>
					<option value="A" >A</option>
					<option value="B" >B</option>
					<option value="C" selected>C</option>
					<%}%>
					</select></td>
				</tr>
				<tr>
					<td align="center">도시코드</td>
					<td><input type="text" name="code" value="<%=mList[member][6] %>"></td>
				</tr>
			  
				<tr>
					<td align="center" colspan="2">
				
						<input type="submit" value="수정">
				
						<input type="button" value="조회" onclick="window.location.href='02_memberListView.jsp'">
								
					</td>
				</tr>	
			</table>
		</form>
	</div>

    	
    