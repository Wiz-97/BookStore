<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The book</title>
<link rel="stylesheet" href="../css/style.css">
</head>
<body>
 <div class="container">
        <div class="header">
            <h1><a href="main.jsp">The book</a></h1>
            <div class="nav">
                <ul>
                <c:if test="${sessionScope.user == null}">
                    <li><a href="../login/loginForm.jsp">로그인</a></li>
                 </c:if>   
                 <c:if test="${sessionScope.user != null }">
                 	<li><a> <c:out value="${user.m_name}"/>님</a></li>
                 	<li><a href ="../login/logout.jsp">로그아웃</a></li> 
                 </c:if>
                    <li><a href="#">카테고리</a></li>
                    <li><a href="#">신간 도서</a></li>
                    <li><a href="../freeboard/FreeboardListAction.jsp">커뮤니티</a></li>
                </ul>
            </div>
        </div>
   	<c:if test="${sessionScope.user == null }">
    <div class="hero">
        <h2>The book</h2>
        <p>온라인 서점에 오신걸 환영합니다.</p>
        <button>회원가입</button>   
   	</div>
   	</c:if>
	<c:if test="${sessionScope.user != null }">
    <div class="hero">
        <h2>The book</h2>
        <p>온라인 서점에 오신걸 환영합니다.</p>
   </div>
    </c:if>
    </div>
</body>
</html>