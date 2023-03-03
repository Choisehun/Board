<%@page import="com.my.ch.dto.PostDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- ({userid},{title},{content},{now()},{views},{category}); -->
			<% 	Object o = request.getAttribute("list");
				List<PostDto> list = (List<PostDto>)o;
				
				
				for(int i=0; i<list.size(); i++){
					Long no = list.get(i).getPost_num();
					String userid = list.get(i).getUser_id();
					String title  = list.get(i).getTitle();
					String content = list.get(i).getContent();
					String data = list.get(i).getData();
					
					
					
					%>
					번호<%=no %> 아이디<%=userid %> 타이틀<%=title %> 콘텐트<%=content %> 시간<%=data %>
					<% 
				}
			%>
			

</body>
</html>