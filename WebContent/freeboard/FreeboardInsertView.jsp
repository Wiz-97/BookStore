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
<h3 style="text-align: center;">글쓰기</h3>
<hr>
<form name="frm1" method="post" action="FreeboardInsertAction.jsp">

 <table>
 	<tr><th>제목</th>
 		<td><input type="text" name="f_subject" size="50" required></td>
 	</tr>
 	<tr>
		<th>작성자</th>
 		<td><input type="text" name="nickName" size="50" required></td>
 	</tr>
 	
 	<tr><th>글 비밀번호</th>
 		<td><input type="password" name="f_password" required></td>
 	</tr>
 	<tr><th>내용</th>
 		<td><textarea  rows="20" cols="60" name="f_content" required></textarea></td>
 	</tr>
 	<tr><td colspan="2" align="center">
 	<input type="submit" value="저장" class="btn" >
 	<input type="reset"  value="다시쓰기" class="btn">
 	<input type="button" value="목록" onclick="location.href='FreeboardListAction.jsp?page=${param.page}'" class="btn">
 	</td></tr>
 </table>
 </form>
</body>
</html>