<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<%@include file="../main/header.jsp" %>
	<form action="SignupAction.jsp"  method="post">
		<div style="width: 500px;">
			<div>
				<div style="width: 80px;">이름</div>
				<div>
					<input type="text" name="m_name" placeholder="성함." size="50">
				</div>
			</div>
			<div>
				<div style="width: 80px;">주소</div>
				<div>
					<input type="text" name="m_address" placeholder="주소 입력하세요."
						size="50">
				</div>
			</div>
			<div>
				<div style="width: 80px;">닉네임</div>
				<div>
					<input type="text" name="nickName" placeholder="사용하실 닉네임 입력하세요."
						size="50">
				</div>
			</div>
			<div style="width: 80px;">비밀번호</div>
				<div>
					<input type="password" name="m_password" placeholder="비밀번호 입력하세요." size="50">
				</div>
			<div>
				<div style="width: 80px;">이메일</div>
				<div>
					<input type="text" name="m_email" placeholder="이베일 입력하세요." size="50">
				</div>
			</div>
			<div>
				<div style="width: 80px;">휴대폰번호</div>
				<div>
					<input type="text" name="m_tel" placeholder="휴대폰 번호 입력하세요." size="50">
				</div>
		
				<div>
					<button>저장</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>