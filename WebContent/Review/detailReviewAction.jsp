<%@page import="vo.ReviewVo"%>
<%@page import="dao.ReviewDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
   
<%
int rno = Integer.parseInt(request.getParameter("rno"));
int bno = Integer.parseInt(request.getParameter("bno"));
int r_content = Integer.parseInt(request.getParameter("r_content"));

request.setAttribute("r_content", r_content);
ReviewDao dao = ReviewDao.getInstance();
dao.bookreviewdetail(bno);
ReviewVo rvo = dao.bookreviewdetail(bno);


request.setAttribute("rvo", rvo);
pageContext.forward("detailReviewForm.jsp");

%>