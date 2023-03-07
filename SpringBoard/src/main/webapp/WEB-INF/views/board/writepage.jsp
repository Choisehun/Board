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
<%
	String id = (String)session.getAttribute("userid");

%>
		<form action="/board/write" method="post">
		아이디:<%=id %>
		<input type="hidden" name="user_id" value="<%=id %>">
		<input name="title">
		<input name="content">
		
		<input type="radio" name=category_id value="1">게시판1
		<input type="radio" name=category_id value="2">게시판2
		<input type="radio" name=category_id value="3">게시판3
		
		<input type="submit" value="확인">
		</form>


</body>
</html>