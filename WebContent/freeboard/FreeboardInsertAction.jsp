<%@page import="vo.FreeboardVo"%>
<%@page import="dao.FreeboardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
   	request.setCharacterEncoding("UTF-8");
	
	//????
	String nickName = request.getParameter("nickName");
	String f_subject = request.getParameter("f_subject");
	String f_content = request.getParameter("f_content");		
	String f_password = request.getParameter("f_password");		
	
	FreeboardDao freedao = FreeboardDao.getInstance();
	FreeboardVo bean = new FreeboardVo(0,0,nickName,f_subject,f_content,f_password,0,null,0,0);
	freedao.insert(bean);
	response.sendRedirect("FreeboardListAction.jsp");   //글 목록 화면으로 url 재요청
%>