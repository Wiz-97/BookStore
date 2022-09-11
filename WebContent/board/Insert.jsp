<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	width : 700px;
	margin: auto;
	
}

th {
		text-align: center;
		background-color: #4080bf;
		font-size:90%;
		color: white;
		width: 150px;
		border-radius : 3px;
}
.btn {
	width: 70px;
	cursor : pointer;
}

</style>
</head>
<body>
<form action ="insert_action.jsp" method="post">
	<table>
		<caption>게시물 쓰기</caption>
		<tr>
			<th>제목</th>
			<td><input type="text" name="title" required="required"></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><input type="text" name="name" required="required"></td>
		</tr>
		<tr>
			<th>비밀번호</th>
		<td><input type="password" name="password" required="required"></td>
		</tr>
		<tr>
		<th>내용</th>
		<td><textarea  rows="20" cols="60" name="content" required></textarea></td>
		</tr>	
		<tr>
		<td colspan="2" align="center"><input type="submit" value="완료"></td>
		</tr>		
	</table>
</form>

</body>
</html>