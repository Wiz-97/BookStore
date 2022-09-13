<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 수정</title>
<style type="text/css">
</style>
</head>
<body>
<h3>내 리뷰 수정 </h3>
<hr>
<form name="updateReview" method="post" action="updateReviewSave.jsp">
	<input type="hidden" name="mno" value="${vo.mno }">
 <table>
 	
 	<tr>
		<th>작성자</th>
 		<td><input type="text" name="writer" size="50" value="${vo.nickName }" disabled="disabled"></td>
 	</tr>
 	 <tr>
		<th>작성 날짜</th>
 		<td><c:out value="${vo.r_date }"/></td>
 	</tr>
 	
 	<tr><th>내용</th> 
 		<td><textarea  rows="20" cols="60" name="r_content" required><c:out value="${vo.r_content }"/></textarea>
 	</tr>
 	<tr><td colspan="2" align="center">
 	<button type="submit">저장</button>
 	<button type="reset">다시쓰기</button>
 	<button type="button" onclick="location.href='listReviewAction.jsp?mno=${mno}'">내리뷰목록</button>
 	
 	</td></tr>
 </table>
 </form>
</body>
</html>