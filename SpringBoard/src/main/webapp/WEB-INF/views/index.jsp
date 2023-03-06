<%@page import="com.my.ch.dto.PostDto"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
	<link rel = "stylesheet"
		href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<!-- Popper.js, Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min"></script>
		<meta charset="UTF-8">

</head>
<body>


<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="/">💪🏻 김종국갤러리 </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/board/getList?category_id=1">노래 게시판</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/board/getList?category_id=2">유튜브 게시판</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/board/getList?category_id=3">패션 게시판</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           	회원가입
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
      </ul>
    </div>
    <form class="d-flex" role="search">
      <input class="form-control me-2" type="search" placeholder="통합 검색" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
  </div>
</nav>


<div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" id="dropdownBtn">
    dropdown button
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="#">dropdown item 1</a>
    <a class="dropdown-item" href="#">dropdown item 2</a>
    <a class="dropdown-item" href="#">dropdown item 3</a>
  </div>
</div>

<script>
$('#dropdownBtn').on('show.bs.dropdown', function () {
	  //클릭하는 순간 하위 버튼들이 보여질 때
	})

	$('#dropdownBtn').on('shown.bs.dropdown', function () {
	  //하위 버튼들이 다 보여지고 난 뒤
	})

	$('#dropdownBtn').on('hide.bs.dropdown', function () {
	  //하위 버튼이 닫혔을 때
	})

	$('#dropdownBtn').on('hidden.bs.dropdown', function () {
	  //하위 버튼이 닫힌 후
	})
</script>



</body>
</html>
