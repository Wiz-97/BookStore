<%@page import="java.util.Map"%>
<%@page import="vo.BookListVo"%>
<%@page import="dao.BookListDao"%>
<%@page import="java.util.HashMap"%>
<%@page import="vo.CategoryVo"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoryDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
CategoryDao cgdao = CategoryDao.getCategory();
List<CategoryVo> cglist = cgdao.viewCate();
request.setAttribute("cglist", cglist);

String cgno = request.getParameter("cgno");
String cate = request.getParameter("cate");

Map<String, String> map = new HashMap<>();
map.put("cgno", cgno);
map.put("cate", cate);

BookListDao bdao = BookListDao.getInstance();
if (cgno == null || cgno.length() == 0)
	cgno = "A01";
List<BookListVo> blist = bdao.select(cgno);
request.setAttribute("blist", blist);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="header.css">
</head>
<body>
	<nav class="header">
		<h1>
			<a href="main.jsp">The book</a>
		</h1>
		<div class="nav">
			<a href="#">로그인</a>
			<div class="dropdown">
				<a class="dropdown" href="#">카테고리</a>
				<div class="dropdown-content">
					<c:forEach var="cg" items="${cglist }">
						<a href="booklist.jsp?cgno=${cg.cgno }">${cg.cate }</a>
					</c:forEach>
				</div>
			</div>
			<a href="#">신간 도서</a> 
			<a href="#">커뮤니티</a>
		</div>
	</nav>
</body>
</html>