<%@page import="vo.BookListVo"%>
<%@page import="dao.BookListDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../main/header.jsp"%>
<%
	int bno = Integer.parseInt(request.getParameter("bno"));

BookListVo bvo = bdao.getDetail(bno);

request.setAttribute("bvo", bvo);
%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="bookdetail.css">
<head>
<meta charset="UTF-8">
<title>THE BOOK</title>
<style type="text/css">
button {
    color:#356859;
    padding: 7px 25px;
    text-decoration: none;  /*  밑줄제거  */
    cursor: pointer;
    display: inline-block;
	text-align:center;
	border-radius: 4px;
	border:1px solid #356859;
	margin : 3px;
}
button:hover {
	border:2px solid #356859;
	padding: 6px 24px;
	font-weight: bold;
}
</style>
</head>
<body>
	<div>
		<img alt="${bvo.title }" src="bookImg/${bvo.b_img}">
		<ul>
			<li>저자</li>
			<li>${bvo.b_writer }</li>
			<li>출판사</li>
			<li>${bvo.publisher }</li>
			<li>출판일</li>
			<li>${bvo.b_date }</li>
			<li>가격</li>
			<li>${bvo.b_price }</li>
		</ul>
		<div style="text-align: center; margin-bottom: 10px">
			<a class="button" href="bookupdateAction.jsp?bno=${bvo.bno }&title=${bvo.title}&b_date=${bvo.b_date}&b_price=${bvo.b_price}&cgno=${bvo.cgno}&b_writer=${b_writer}&publisher=${bvo.publisher}&b_img=${bvo.b_img}">수정</a> 
			<a class="button" href="bookdeleteAction.jsp?bno=${bvo.bno }">삭제</a>
			<a class="button" href="booklist.jsp">목록</a>
			<a class="button" href="insertReviewForm.jsp">리뷰</a>
		</div>
	</div>
</body>
</html>