<%@page import="vo.FreeboardVo"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dao.FreeboardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int f_idx = Integer.parseInt(request.getParameter("f_idx"));
	String pageNo = request.getParameter("page");
	String f_password = request.getParameter("f_password");
	
	FreeboardDao dao = FreeboardDao.getInstance();
	
	FreeboardVo vo = dao.getDetail(f_idx);
	
	String message;String href;
	if( vo.getF_password().equals(f_password) ){  //글 비밀번호 일치 : 삭제 완료 -> 글 목록으로 이동.
		request.setAttribute("vo", vo);
		request.setAttribute("page", pageNo);
		pageContext.forward("FreeboardUpdateView.jsp");
	}else {		//글 비밀번호 불일치 : 삭제 못함. -> 글 상세보기로 이동
		out.print("<script>");
		out.print("alert('글 비밀번호가 틀립니다.');");
		out.print("history.back();");
		out.print("</script>");
	}
%>















