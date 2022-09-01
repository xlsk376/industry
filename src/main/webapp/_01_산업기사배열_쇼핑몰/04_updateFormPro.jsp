<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%
    	Object memberlist= session.getAttribute("memberList");
    	String memberList[][]=(String[][])memberlist;
    	Object membercount = session.getAttribute("memberCount");
    	int memberCount = (int)membercount;
    	if(request.getParameter("num")!=null){
            int num=Integer.valueOf(request.getParameter("num"));
            String phone = request.getParameter("phone1")+"-"+request.getParameter("phone2")+"-"
                           +request.getParameter("phone3");
            String address = request.getParameter("address");
            String rank = request.getParameter("rank");
            String code = request.getParameter("code");
        	for(int i = 0; i < memberCount; i++){
        		if(num==Integer.valueOf(memberList[i][0])){
        			memberList[i][2]=phone;
        			memberList[i][3]=address;
        			memberList[i][5]=rank;
        			memberList[i][6]=code;
        		}
        	}
        } 
    	session.setAttribute("memberList", memberList);
    	session.setAttribute("memberCount", memberCount); 	

    	response.sendRedirect("02_memberListView.jsp");
        %>