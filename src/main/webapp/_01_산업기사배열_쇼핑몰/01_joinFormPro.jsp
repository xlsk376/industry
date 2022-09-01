<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

   	<%
    	Object memberlist= session.getAttribute("memberList");
    	String memberList[][]=(String[][])memberlist;
    	Object membercount = session.getAttribute("memberCount");
    	int memberCount = (int)membercount;   
    	memberCount+=1;
            String phone = request.getParameter("phone1")+"-"+request.getParameter("phone2")+"-"
                           +request.getParameter("phone3");
            String address = request.getParameter("address");
            String name = request.getParameter("name");
            String day = request.getParameter("day");
            String rank = request.getParameter("rank");
            String code = request.getParameter("code");
            code = code.substring(0, 2);
            int count = Integer.valueOf(memberList[memberCount-2][0])+1;
            memberList[memberCount-1][0]=String.valueOf(count);
            memberList[memberCount-1][1]=name;
            memberList[memberCount-1][2]=phone;
            memberList[memberCount-1][3]=address;
            memberList[memberCount-1][4]=day;
            memberList[memberCount-1][5]=rank;
            memberList[memberCount-1][6]=code;
            
            
    	session.setAttribute("memberList", memberList);
    	session.setAttribute("memberCount", memberCount); 	

    	response.sendRedirect("02_memberListView.jsp");
        %>


</body>
</html>