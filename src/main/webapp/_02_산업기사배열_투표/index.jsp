<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%

    	String[][] memberSampleList = {
	    			{"1" , "김후보" , "P1","1" , "6603011999991" , "수선화동"},
	    			{"2" , "이후보" , "P2","3" , "5503011999992" , "민들래동"},
	    			{"3" , "박후보" , "P3","2" , "7703011999993" , "나팔꽃동"},
	    			{"4" , "조후보" , "P4","2" , "8803011999994" , "진달래동"},
	    			{"5" , "최후보" , "P5","3" , "9903011999995" , "개나리동"},
    			};
    	String[][] memberList = new String[100][6];
    	for(int i = 0; i < memberSampleList.length; i++){
    		for(int j = 0; j < memberSampleList[i].length; j++){
    			memberList[i][j] = memberSampleList[i][j];
    		} 		
    	}    	 	
    	String[][] partySampleList = {
				{"P1", "A정당", "2010-01-01", "위대표", "02", "1111", "0001"},
				{"P2", "B정당", "2010-02-01", "명대표", "02", "1111", "0002"},
				{"P3", "C정당", "2010-03-01", "기대표", "02", "1111", "0003"},
				{"P3", "C정당", "2010-03-01", "기대표", "02", "1111", "0003"},
				{"P4", "D정당", "2010-04-01", "옥대표", "02", "1111", "0004"},
				{"P5", "E정당", "2010-05-01", "임대표", "02", "1111", "0005"}
					
			};
    	
    	String[][] partyList = new String[100][7];
    	for(int i = 0; i < partySampleList.length; i++){
    		for(int j = 0; j < partySampleList[i].length; j++){
    			partyList[i][j] = partySampleList[i][j];
    		} 		
    	} 	 	
    	String [][] voteSampleList = {
    			     {"69010110003", "박유권", "3", "0930", "제1투표장", "Y"},
    				 {"59010120004", "홍유권", "4", "0930", "제1투표장", "Y"},
    				 {"79010110005", "조유권", "5", "0930", "제1투표장", "Y"},
    				 {"89010120006", "최유권", "1", "0930", "제1투표장", "Y"},
    				 {"59010110007", "지유권", "1", "0930", "제1투표장", "Y"},
    				 {"49010120008", "장유권", "3", "0930", "제1투표장", "Y"},
    				 {"79010110009", "정유권", "3", "0930", "제1투표장", "Y"},
    				 {"89010120010", "강유권", "4", "0930", "제1투표장", "Y"},
    				 {"99010110011", "신유권", "5", "0930", "제1투표장", "Y"},
    				 {"79010120012", "오유권", "1", "1330", "제1투표장", "Y"},
    				 {"69010110013", "현유권", "4", "1330", "제2투표장", "Y"},
    				 {"89010110014", "왕유권", "2", "1330", "제2투표장", "Y"},
    				 {"99010110015", "유유권", "3", "1330", "제2투표장", "Y"},
    				 {"79010110016", "한유권", "2", "1330", "제2투표장", "Y"},
    				 {"89010110017", "문유권", "4", "1330", "제2투표장", "Y"},
    				 {"99010110018", "양유권", "2", "1330", "제2투표장", "Y"},
    				 {"99010110019", "구유권", "4", "1330", "제2투표장", "Y"},
    				 {"79010110020", "황유권", "5", "1330", "제2투표장", "Y"},
    				 {"69010110021", "배유권", "3", "1330", "제2투표장", "Y"},
    				 {"79010110022", "전유권", "3", "1330", "제2투표장", "Y"},
    				 {"99010110023", "고유권", "1", "1330", "제2투표장", "Y"},
    				 {"59010110024", "권유권", "3", "1330", "제2투표장", "Y"},
    	};
    	
    	String[][] voteList = new String[100][6];
    	for(int i = 0; i < voteSampleList.length; i++){
    		for(int j = 0; j < voteSampleList[i].length; j++){
    			voteList[i][j] = voteSampleList[i][j];
    		} 		
    	} 	 	
  	
    	session.setAttribute("memberList", memberList);
    	session.setAttribute("memberCount", memberSampleList.length); 	
    	session.setAttribute("partyList", partyList);
    	session.setAttribute("partyCount", partySampleList.length);
    	session.setAttribute("voteList", voteList);  	
    	session.setAttribute("voteCount", voteSampleList.length);  	
    	response.sendRedirect("02_voteMain.jsp");
    %>
    