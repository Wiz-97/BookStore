<%@page import="vo.ReviewVo"%>
<%@page import="dao.ReviewDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
   	request.setCharacterEncoding("UTF-8");
	
	int rno = Integer.parseInt(request.getParameter("rno"));
	String r_content = request.getParameter("r_content");		
	int r_heart = Integer.parseInt(request.getParameter("r_heart"));	
	String ip = request.getRemoteAddr();
	
	ReviewDao revdao = ReviewDao.getInstance();

	ReviewVo vo = new ReviewVo(0,0,0,null,r_content,null,0);

	revdao.update(vo);
	response.sendRedirect("updateReviewAction.jsp?rno="+rno);  
%>