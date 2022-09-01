<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="00_top.jsp" ></jsp:include>


<div align="center">
	<h2>홈쇼핑 회원 등록</h2>
	<form action="01_joinFormPro.jsp">
		<table border="1">
			<tr>
				<td align="center">회원성명</td>
				<td><input name="name" type="text"></td>
			</tr>
			<tr>
				<td align="center">회원전화</td>
				<td><input type="text" name="phone1" value="010" maxlength="3">-
				<input type="text" name="phone2"  maxlength="4">-
				<input type="text" name="phone3" maxlength="4"></td>
			</tr>
			<tr>
				<td align="center">통신사(SK KT LG)</td>
				<td >
					 <input type="radio" name="address" value="SK" checked>SK&nbsp;
			         <input type="radio" name="address" value="KT">KT&nbsp;
			         <input type="radio" name="address" value="LG">LG			
				</td>
			</tr>
			<tr>
				<td align="center">가입일자</td>
				<td><input type="text" name="day" maxlength="8"> </td>
			</tr>
			<tr>
				<td align="center">고객등급(A:VIP,B:일반,C:직원)</td>
				<td><select name="rank">
				<option value="A">A</option>
				<option value="B">B</option>
				<option value="C">C</option>
				</select>
				</td>
			</tr>
			<tr>
			<%Object codelist= session.getAttribute("codeList");  
			  String codeList[][]=(String[][])codelist;%>
				<td align="center">도시코드</td>
				<td><select name="code">
				<%for(int i=0;i<codeList.length;i++){ %>
				<option><%=codeList[i][0]+" "+codeList[i][1]%></option>
				<%}%>
				</select>
				</td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<input type="submit" value="등록">
					<input type="button" value="조회" onclick="window.location.href='02_memberListView.jsp'">
				</td>
			</tr>		
		</table>
	</form>
</div>
