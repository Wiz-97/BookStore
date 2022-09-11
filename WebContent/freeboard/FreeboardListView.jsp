<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
<!-- 절대경로 request.getContextPath() 을 el로 표시-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/freeboard.css?v=3">
</head>
<body>
	<h3 style="text-align: center;">자유게시판</h3>
	<h4><a href="../main/main.jsp">홈으로</a></h4>
	<hr>
	<main>
		<div style="margin: auto;">
			<ul id="main">
				<li>
					<ul class="row">
						<li>번호</li>
						<li>제목</li>
						<li>작성자</li>
						<li>조회수</li>
						<li>작성일</li>
					</ul>
				</li>
				<c:forEach var="vo" items="${list}">
					<li>
						<ul class="row">
							<li>${vo.f_idx }</li>
							<li><a href="FreeboardDetailAction.jsp?f_idx=${vo.f_idx}&page=${page}"
								class="title">${vo.f_subject }</a>...<span
								style="color: orange; font-size: 80%;">(${vo.commentCount })
							</span></li>
							<li>${vo.nickName }</li>
							<li>${vo.readCount }</li>
							<li><fmt:formatDate value="${vo.fdate }"
									pattern="yyyy-MM-dd" var="fdate" /> <!-- 오늘 작성한 글은 시간으로 표시 -->
								<c:if test='${fdate == today}'>
									<fmt:formatDate value="${vo.fdate }" type="time" />
								</c:if> <!-- 오늘 이전에 작성한 글은 날짜로 표시 --> <c:if test='${fdate != today}'>
									<fmt:formatDate value="${vo.fdate }" pattern="yyyy-MM-dd" />
								</c:if></li>

						</ul>
					</li>
				</c:forEach>
			</ul>
			<div style="float: right; margin: 40px;">
				<a href="FreeboardInsertView.jsp?page=${page }" class="button">글쓰기</a>
			</div>
		</div>
		<!-- 페이지 버튼을 클릭하면 url  http://192.168.1.254:8082/jsp2/board/listAction.jsp 은 동일하고 page 파라미터만 변경됩니다.
		이런 경우 앞의 부분 생략하고 ? 부터 작성.-->
		<div style="width: 700px; margin: auto; text-align: center;">
			전체 글 개수 :
			<c:out value="${pagelist.totalCount }" />
			<br> <a class="pagenum" href="?page=1">&lt;&lt;</a> <a
				class="pagenum" href="?page=${pagelist.startPage-1 }"
				style='<c:if test="${pagelist.startPage==1 }">display:none;</c:if>'>&lt;</a>

			<c:forEach var="i" begin="${pagelist.startPage }"
				end="${pagelist.endPage }">
				<a class="pagenum" href="?page=${i }"><c:out value="${i }" /></a>
			</c:forEach>

			<a class="pagenum" href="?page=${pagelist.endPage+1 }"
				style='<c:if test="${pagelist.endPage==pagelist.totalPage }">display:none;</c:if>'>&gt;</a>
			<a class="pagenum" href="?page=${pagelist.totalPage }">&gt;&gt;</a>
		</div>
	</main>
</body>
</html>













