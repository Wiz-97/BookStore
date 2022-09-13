<%@page import="vo.ReviewVo"%>
<%@page import="dao.ReviewDao"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    int rno = Integer.parseInt(request.getParameter("rno"));
    int mno = Integer.parseInt(request.getParameter("mno"));
    String r_content = request.getParameter("r_content");
	ReviewDao dao =ReviewDao.getInstance();
	ReviewVo vo = dao.getDetails(rno);
	
	String message;String href;
	if( dao.getReview(vo).getRno()==rno){  
		request.setAttribute("vo", vo);
		pageContext.forward("updateReviewForm.jsp");
	}else {		
		out.print("<script>");
		out.print("alert('작성자 본인이 아닙니다');");
		out.print("history.back();");
		out.print("</script>");
	}
%>
