<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../main/header.jsp"%>
	<form action="categoryregistAction.jsp">
		<div style="width: 500px">
			<div>
				<div style="width: 120px;">카테고리 코드</div>
				<div>
					<input type="text" name="cgno" placeholder="카테고리 코드를 입력하세요."
						size="50">
				</div>
			</div>
			<div>
				<div style="width: 120px;">카테고리 명</div>
				<div>
					<input type="text" name="cate" placeholder="카테고리 명을 입력하세요."
						size="50">
				</div>
			</div>
			<div>
				<button>저장</button>
			</div>
		</div>
	</form>
</body>
</html>