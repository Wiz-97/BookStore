<%@page import="dao.ReviewDao"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int rno = Integer.parseInt(request.getParameter("rno"));
	int mno = Integer.parseInt(request.getParameter("mno"));
	
	ReviewDao dao = ReviewDao.getInstance();
	Map<String,Object> map = new HashMap<>();
	map.put("rno",rno);
	map.put("mno",mno);
	int result = dao.delete(map);
	String message;String href;
	if(result ==1){ 
		message = "글 삭제 되었습니다.";
		href = "listReviewAction.jsp?rno="+rno;
	}else {		
		message = "본인이 작성한 리뷰만 삭재할수 있습니다.";
		href = "listReviewAction.jsp?rno="+rno;
	}
	
	out.print("<script>");
	out.print("alert('"+message+"');");
	out.print("location.href='"+href+"';");
	out.print("</script>");
%>















