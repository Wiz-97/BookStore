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
	<%
	String column = request.getParameter("column");
	String find = request.getParameter("find");
	pageContext.setAttribute("column", column);
	pageContext.setAttribute("find", find);

	Map<String, String> smap = new HashMap<>();
	smap.put("column", column);
	smap.put("find", find);
	
	List<BookListVo> slist = bdao.search(smap);
	request.setAttribute("slist",slist);
	%>
	<form action="booksearch.jsp">
		<select name="column" id="column">
			<option value="title">제목</option>
			<option value="b_writer">저자</option>
		</select>
		<span>
			<input name="find" placeholder="검색할 내용 입력"
			value="<%=(find != null) ? find : ""%>" id="content">
		</span>
	</form>
	<c:forEach var="sl" items="${slist }">
		<div class="book" style="width: 18rem;">
			<a href="bookdetail.jsp?bno=${sl.bno }"> <img
				src="bookImg/${sl.b_img }" class="card-img-top" alt="${sl.b_title }">
			</a>
			<div class="book-body">
				<h5 class="book-title"><a href="bookdetail.jsp?bno=${sl.bno }">${sl.title }</a></h5>
			</div>
			<ul class="list-group list-group-flush">
				<li class="list-group-item">${sl.b_writer }</li>
				<li class="list-group-item">${sl.b_publisher }</li>
				<li class="list-group-item">${sl.b_date }</li>
				<li class="list-group-item">${sl.b_price }</li>
			</ul>
		</div>
	</c:forEach>
	<script type="text/javascript">
		const sel = document.querySelectorAll("#column>option");

		sel.forEach(function(item) {
			if (item.value == '${column}') {
				item.selected = 'selected';
			}
		});
	</script>
</body>
</html>