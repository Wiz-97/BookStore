<%@page import="vo.ReviewVo"%>
<%@page import="dao.ReviewDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
   
<%
request.setCharacterEncoding("UTF-8"); 

/* int rno = Integer.parseInt(request.getParameter("rno")); */
int mno = Integer.parseInt(request.getParameter("mno"));
int bno = Integer.parseInt(request.getParameter("bno"));
String nickName = request.getParameter("nickName");
String c_content = request.getParameter("c_content");
String ip = request.getRemoteAddr();
ReviewDao dao = ReviewDao.getInstance();
ReviewVo vo = new ReviewVo(0,mno,bno,nickName,c_content,null,0);

int result = dao.insert(vo);
response.sendRedirect("listReviewAction.jsp");
out.print(result);
%>