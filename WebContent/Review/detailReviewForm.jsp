<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰 상세보기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/detail.css?v=3">
</head>
<body>  
<main>
	<h3>책리뷰 상세보기</h3>
	<hr>
	<div style="width: 80%; margin: auto;max-width: 700px;">
		<ul id="main">
			<li>
				<ul class="row">
					<li>제목</li>
					<li><input type="text" name="subject" size="50" value="title ${rvo.b_title }" readonly></li>
				</ul>
			</li>
			<li>
				<ul class="row">
					<li>작성자</li>
					<li><input type="text" name="writer" size="50" value="${rvo.nickName }" disabled="disabled"><span
				style="font-size: 70%; padding-left: 30px;">${rvo.nickName }</span></li>
					<li>작성날짜</li>
					<li><fmt:formatDate value="${(rvo.r_date) }" type="both"/></li>
				</ul>
			</li>
			<li id="content">
				<ul>
					<li>내용</li>			
					<li>
						<pre>${rvo.r_content }</pre>
					</li>				
				</ul>
			</li>
		</ul>
	<div style="text-align: center;margin-bottom: 10px;">
		<a class="button" href="javascript:modalSet(2)">수정</a>
		<a class="button" href="javascript:modalSet(1)">삭제</a>  
		<a class="button" href="detailReviewAction.jsp?bno=${bno }">리뷰목록</a>
	</div>
	
	<hr>
	<form action="insertReviewAction.jsp" method="post">
	<input type="hidden" name="nick" value="${rvo.nickName }">
		
			
	</form>
	</div>
	<div id="myModal" class="modal">
		<div class="modal-content">
			<span class="close" id="close">&times;</span><br>   
			<div style="padding: 0px 20px;">
					
			</div>
		</div>
	</div>
	<script type="text/javascript">
	const vclose = document.getElementById('close');
	vclose.onclick = function(){
		document.getElementById('myModal').style.display='none';
	}
	
	function modalSet(func) {
		document.getElementById('myModal').style.display='block';
		document.forms[1].func.value=func;		
	}
	function modalOK() {
		if(document.forms[1].func.value==2){ 
			document.forms[1].action = 'updateReviewAction.jsp'
		}
		document.forms[1].submit();
	}
	
	function deleteCmt(cmtidx,idx){
			const yn = confirm('리뷰를 삭제하시겠습니까?');
			if(yn) {
				location.href='DeleteReviewAction.jsp?del=y&rno=${rno}&bno=${bno}';
			}else {
				alert('리뷰 삭제 취소됨.');
			}
	}
	
	
	function reset_content() {
		document.forms[0].content.value=""
	}


	</script>
	</main>
</body>
</html>