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
	Map<String,Object> map = new HashMap<>();
	map.put("f_idx",f_idx);
	map.put("f_password",f_password);
	int result = dao.delete(map);
	String message;String href;
	if(result == 1){  //글 비밀번호 일치 : 삭제 완료 -> 글 목록으로 이동.
		message = "글 삭제 되었습니다.";
		href = "FreeboardListAction.jsp?page="+pageNo;
	}else {		//글 비밀번호 불일치 : 삭제 못함. -> 글 상세보기로 이동
		message = "글 비밀번호가 틀립니다.";
		href = "FreeboardDetailAction.jsp?f_idx=" + f_idx + "&page=" + pageNo;
	}
	
	out.print("<script>");
	out.print("alert('"+message+"');");
	out.print("location.href='"+href+"';");
	out.print("</script>");
%>















