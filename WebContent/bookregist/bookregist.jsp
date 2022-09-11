<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../main/header.jsp"%>

	<form action="bookregistAction.jsp"  method="post"
		enctype="multipart/form-data">
		<div style="width: 500px;">
			<div>
				<div style="width: 80px;">제목</div>
				<div>
					<input type="text" name="title" placeholder="제목 입력하세요." size="50">
				</div>
			</div>
			<div>
				<div style="width: 80px;">저자</div>
				<div>
					<input type="text" name="b_writer" placeholder="저자 입력하세요."
						size="50">
				</div>
			</div>
			<div>
				<div style="width: 80px;">출판사</div>
				<div>
					<input type="text" name="publisher" placeholder="출판사 입력하세요."
						size="50">
				</div>
			</div>
			<div>
				<div style="width: 80px;">출판일</div>
				<div>
					<input type="text" name="b_date" placeholder="출판일 입력하세요." size="50">
				</div>
			</div>
			<div>
				<div style="width: 80px;">가격</div>
				<div>
					<input type="text" name="b_price" placeholder="가격 입력하세요." size="50">
				</div>
			</div>
			<div>
				<!-- <div style="width: 80px;">카테고리</div>
				<div>
					<input type="text" name="cgno" placeholder="카테고리 입력하세요." size="50">
				</div> -->
				<div>
					<c:forEach var="cg" items="${cglist }">
						<label><input type="checkbox" name="cgno"
							value="${cg.cgno }"> ${cg.cate }</label>
					</c:forEach>
				</div>
				<div>
					<input type="file" name="b_img" accept="image/*"
						placeholder="이미지 파일을 선택하세요.">
					<button>저장</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>