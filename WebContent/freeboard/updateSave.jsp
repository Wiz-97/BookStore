<%@page import="vo.FreeboardVo"%>
<%@page import="dao.FreeboardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
   	request.setCharacterEncoding("UTF-8");
	
	int f_idx = Integer.parseInt(request.getParameter("f_idx"));
	String f_subject = request.getParameter("f_subject");
	String f_content = request.getParameter("f_content");		
	
	String pageNo = request.getParameter("page");
	FreeboardDao freedao = FreeboardDao.getInstance();

	FreeboardVo vo 
	= new FreeboardVo(f_idx,null,null,f_subject,f_content,0,null,0);

	freedao.update(vo);
	response.sendRedirect("detailAction.jsp?idx="+f_idx +"&page="+pageNo);   //글목록 화면으로 url 재요청
%>