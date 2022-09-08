<%@page import="vo.FreeboardVo"%>
<%@page import="dao.FreeboardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
   	request.setCharacterEncoding("UTF-8");
	
	//????
	String nickName = request.getParameter("nickName");
	String password = request.getParameter("password");
	String f_subject = request.getParameter("f_subject");
	String f_content = request.getParameter("f_content");		
	
	FreeboardDao freedao = FreeboardDao.getInstance();
// 	 Freeboard bean = Freeboard.builder()
// 			.writer("김땡땡").subject("글쓰기 테스트").content("잘되나요??").password("1212").build();
	FreeboardVo bean 
	= new FreeboardVo(0,nickName,password,f_subject,f_content,0,null,0);
//	= new Freeboard(0,"김땡땡","1212","글쓰기 테스트","잘되나요??",	0,null,null,0);
	freedao.insert(bean);
	response.sendRedirect("listAction.jsp");   //글목록 화면으로 url 재요청
%>