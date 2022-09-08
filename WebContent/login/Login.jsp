<%@page import="vo.Member"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String userid = request.getParameter("userid");
	String password = request.getParameter("password");

	MemberDao dao = MemberDao.getInstance(); 
	Map<String,String> map = new HashMap<>();
	map.put("email", userid);
	map.put("password", password);
		out.print("<script>");
	Member vo =dao.login(map);
	if(dao.login(map) != null){
		session.setAttribute("user", vo);
		session.setAttribute("sessionId", session.getId());
		out.print("alert('로그인 했습니다.');");
		out.print("location.href='../main/main.jsp';");
	}else{
		out.print("alert('로그인 계정 정보가 다릅니다.');");
		out.print("location.href='loginForm.jsp';");
	}
		out.print("</script>");
%>					