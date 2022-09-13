<%@page import="vo.Member"%>
<%@page import="dao.MemberDao"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	MemberDao mdao = MemberDao.getInstance();
	
	out.print("<script>");
try{
	
	
	
	String m_name = request.getParameter("m_name");
	String m_address = request.getParameter("m_address");
	String nickName = request.getParameter("nickName");
	String m_email = request.getParameter("m_email");
	String m_tel = request.getParameter("m_tel");
	String m_password = request.getParameter("m_password");
	
	Member mlist = new Member(0,m_name,m_address,nickName,m_email,m_tel,m_password);
	
	mdao.insert(mlist);
	out.print("alert('회원 등록완료.');");
	out.print("location.href='SignupForm.jsp';");

}catch (Exception e) {
	out.print("alert('회원 등록을 실패했습니다.');");
	out.print("location.href='SignupForm.jsp';");
}
out.print("</script>");
	%>