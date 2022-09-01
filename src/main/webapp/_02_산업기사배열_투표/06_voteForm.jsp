<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <!-- 테두리 2줄을 1줄로 만들기 -->
<style>
	table{
		border-collapse:collapse; 
	}
</style>

	<jsp:include page="01_header.jsp"></jsp:include>	
	<jsp:include page="01_nav.jsp"></jsp:include>
	
	<div align="center">
		<h2>투표하기</h2>
		<form  action="06_votePro.jsp" method="post" >
			<table border="1">		
				<tr>
					<td width="200px" align="center">주민번호</td>
					<td width="500px"><input name="jumin"> 예 : 8906153154726</td>
				</tr>
				<tr>
					<td align="center">성명</td>
					<td><input name="name"> </td>
				</tr>
				<tr >
					<td align="center">투표번호</td>
					<td><input name="no"> </td>
				</tr>
				<tr>
					<td align="center">투표시간</td>
					<td><input name="time"></td>
				</tr>
				<tr>
					<td align="center">투표장소</td>
					<td><input name="area"></td>
				</tr>
				<tr>
					<td align="center">유권자확인</td>
					<td>
						<input type="radio" name="check" value="Y" />확인
						<input type="radio" name="check" value="N" />미확인					
					</td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit"><input type="reset"></td>
				</tr>
				
			</table>	
		</form>
	</div>
	
	<jsp:include page="01_footer.jsp"></jsp:include>	
    